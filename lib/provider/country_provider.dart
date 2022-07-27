import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_management_system/error/remote_exception.dart';
import 'package:student_management_system/models/country.dart';
import 'package:student_management_system/network/api_service.dart';
import 'package:student_management_system/network/network_client.dart';

class CountryProvider extends ChangeNotifier {
  ApiService apiService = ApiService(networkClient: NetworkClient());

  List<DropdownMenuItem> countryList = [];

  Future<void> getCountry() async {
    try {
      final res = await apiService.getCountries();

      Map<String, dynamic> map = jsonDecode(res.toString());

      if (map['success']) {
        countryList = (map['data'] as List).map((e) {
          CountryModel countryModel = CountryModel.fromJson(map);
          return DropdownMenuItem<CountryModel>(
            value: countryModel,
            child: Text(countryModel.name),
          );
        }).toList();
      }
    } on RemoteException catch (e) {
      throw e.dioError;
    }
  }
}
