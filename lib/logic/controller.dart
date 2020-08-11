import 'package:get/state_manager.dart';

class ErrorController extends GetxController {
  var errorText = "";

  showError() {
    errorText = "Incorrect Username or Password";
  }

  hideError() {
    errorText = "";
  }
}
