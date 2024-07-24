import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _categoryId = prefs.getInt('ff_categoryId') ?? _categoryId;
    });
    _safeInit(() {
      _userId = prefs.getInt('ff_userId') ?? _userId;
    });
    _safeInit(() {
      _tableRows = prefs.getInt('ff_tableRows') ?? _tableRows;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  String _lastDate = '';
  String get lastDate => _lastDate;
  set lastDate(String value) {
    _lastDate = value;
  }

  int _categoryId = 0;
  int get categoryId => _categoryId;
  set categoryId(int value) {
    _categoryId = value;
    prefs.setInt('ff_categoryId', value);
  }

  int _userId = 0;
  int get userId => _userId;
  set userId(int value) {
    _userId = value;
    prefs.setInt('ff_userId', value);
  }

  int _tableRows = 25;
  int get tableRows => _tableRows;
  set tableRows(int value) {
    _tableRows = value;
    prefs.setInt('ff_tableRows', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
