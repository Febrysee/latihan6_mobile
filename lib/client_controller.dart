// client_controller.dart
import 'package:appwrite/appwrite.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ClientController extends GetxController {
  static const String endPoint = 'https://cloud.appwrite.io/v1';
  static const String projectID = '6566d2aae4e97c4541a4';

  Client client = Client();
  late Account account; // Declare the Account property

  @override
  void onInit() {
    super.onInit();
    // appwrite
    client
        .setEndpoint(endPoint)
        .setProject(projectID)
        .setSelfSigned(status: true);

    // Set the account property
    account = Account(client as Client);
  }
}
