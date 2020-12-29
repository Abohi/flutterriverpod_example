import 'dart:convert';

import 'package:bridge/models/add_expense_model/add_expense_model.dart';
import 'package:http/http.dart' as http;
class PriceApi{
  var headers = {"Content-Type": "application/json"};
  static const baseUrl = "";

  Future<bool> addPrice(
      String token, AddPriceModel addPriceModel) async {
    headers['Authorization'] = 'JWT $token';
    return await http
        .post(baseUrl.toString() + "cash/",
        headers: headers, body: json.encode(addPriceModel.toJson()))
        .then((value) async {
      if (value.statusCode == 201) {

        return true;

      }
      return false;
    }).catchError((_) => {

    });
  }
}