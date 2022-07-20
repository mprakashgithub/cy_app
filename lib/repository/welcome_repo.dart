import 'dart:convert';

import 'package:cy_app/model/welcome_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WelcomeRepo {
  Future<WelcomeModel?> getBankData(String ifsc) async {
    try {
      var request =
          http.Request('GET', Uri.parse("https://ifsc.razorpay.com/$ifsc"));
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        var map = json.decode(data);
        var model = WelcomeModel.fromJson(map);
        return model;
      } else {
        debugPrint(response.reasonPhrase);
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
}
