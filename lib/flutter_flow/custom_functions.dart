import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? newCustomFunction(List<int>? vendors) {
  String vendor = "";
  for (int i = 0; i < vendors!.length; i++) {
    if (i < vendors.length - 1) {
      vendor = vendor + vendors[i].toString() + ',';
    } else {
      vendor = vendor + vendors[i].toString();
    }
  }
  return vendor;
}
