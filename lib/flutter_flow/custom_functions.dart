import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';

double? findandreplace(String? dados) {
  // find and replace , by .
  if (dados == null) {
    return null;
  }
  final replaced = dados.replaceAll(',', '.');
  return double.tryParse(replaced);
}

DateTime? convertstringdatetime(String? data) {
  // receive a text and return a date
  if (data == null) return null;
  final DateFormat dateFormat = DateFormat('dd/MM/yyyy H:mm');
  try {
    final DateTime date = dateFormat.parse(data);
    return date;
  } catch (e) {
    return null;
  }
}

double? sumallitems(List<double> list) {
  // add up all items list
  double sum = 0;
  for (double item in list) {
    sum += item;
  }
  return sum;
}

List<double>? chartLineY(
  List<double>? valor,
  List<DateTime>? date,
) {
  // add all list items with the same date
  if (valor == null || date == null || valor.length != date.length) {
    return null;
  }

  final Map<DateTime, double> map = {};

  for (int i = 0; i < valor.length; i++) {
    final DateTime key = DateTime(date[i].year, date[i].month, date[i].day);
    if (map.containsKey(key)) {
      map[key] = map[key]! + valor[i];
    } else {
      map[key] = valor[i];
    }
  }

  return map.values.toList();
}

List<int>? chartLineX(List<DateTime>? date) {
  // count the number of items and send a total progressive list, if you repeat the date, only do 1 count
  if (date == null || date.isEmpty) {
    return null;
  }

  final dateFormat = DateFormat('yyyy-MM-dd H:mm');
  final uniqueDates = <String>{};
  final counts = <int>[];

  for (final dateTime in date) {
    final dateString = dateFormat.format(dateTime);
    if (!uniqueDates.contains(dateString)) {
      uniqueDates.add(dateString);
      counts.add(uniqueDates.length);
    }
  }

  return counts;
}
