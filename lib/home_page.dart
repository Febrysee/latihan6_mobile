// Inside your HomePage widget
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newapp/recipe.api.dart';
import 'package:newapp/recipe.dart';
import 'package:newapp/recipe_card.dart';

import 'auth_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  void _handleLogout() {
    AuthController authController = Get.find<AuthController>();
    authController.logout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Recipe'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: _handleLogout,
          ),
        ],
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _recipes.length,
              itemBuilder: (context, index) {
                return RecipeCard(
                  title: _recipes[index].name,
                  cookTime: _recipes[index].totalTime,
                  rating: _recipes[index].rating.toString(),
                  thumbnailUrl: _recipes[index].images,
                );
              },
            ),
    );
  }
}
