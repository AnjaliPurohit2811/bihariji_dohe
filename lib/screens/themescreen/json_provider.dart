import 'package:bihariji_dohe/utils/model_class.dart';
import 'package:flutter/material.dart';

class JsonDataProvider extends ChangeNotifier {
  List<DoheModel> data = [];

  void convertData(List<dynamic> jsonData) {
    data = jsonData.map((item) => DoheModel.fromJson(item)).toList();
    notifyListeners();
  }
  DoheModel getData(int index) {
    return data[index];
  }
}