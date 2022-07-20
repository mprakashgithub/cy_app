import 'package:cy_app/model/welcome_model.dart';
import 'package:cy_app/repository/welcome_repo.dart';
import 'package:flutter/cupertino.dart';

class WelcomeProvider with ChangeNotifier {
  WelcomeModel? model;

  bool isLoaded = false;

  Future<void> getBankApi() async {
    model = await WelcomeRepo().getBankData();
    setIsLoaded(true);
    notifyListeners();
  }

  bool getIsLoaded() {
    return isLoaded;
  }

  void setIsLoaded(bool value) {
    isLoaded = value;
    notifyListeners();
  }
}
