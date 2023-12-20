import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:newapp/recipe.api.dart';
import 'package:newapp/recipe.dart';

import 'recipe.api_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('RecipeApi', () {
    test(
        'getRecipe returns a list of recipes if the http call completes successfully',
        () async {
      final client = MockClient();

      // Mock successful HTTP response
      when(client.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('{"feed": []}', 200));

      // Inject the mock client into the RecipeApi
      RecipeApi.httpClient = client;

      // Call the getRecipe method
      final recipes = await RecipeApi.getRecipe();

      // Assert that the method returns a list of recipes
      expect(recipes, isA<List<Recipe>>());
    });

    test('getRecipe throws an exception if the http call fails', () async {
      final client = MockClient();

      // Mock failed HTTP response
      when(client.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      // Inject the mock client into the RecipeApi
      RecipeApi.httpClient = client;

      // Call the getRecipe method
      expect(() => RecipeApi.getRecipe(), throwsException);
    });
  });
}
