import 'package:paybox/services/dateStrftime.dart';
import 'package:paybox/services/persianiser.dart';
import 'package:paybox/services/rializer.dart';
import 'package:paybox/assets.dart';
import 'dart:convert';
import 'package:flutter/material.dart';

const colors = [0xFF8C7E51, 0xFF22313F, 0xFF836D6F, 0xFFD95885, 0xFF3A539B, 0xFFF89406, 0xFFBA68C8, 0xFF496D76, 0xFFF1C40F, 0xFF54573A, 0xFFD35400, 0xFF8A2D3C, 0xFF6B76AA, 0xFF674172, 0xFF83959E, 0xFFF64B5F, 0xFFCA7054];
class Avatar {
  static String getAvatar (String name) {
    if (name == null) {
      return '';
    }
    List<String> names = name.split(' ');
    if (names.length == 0) {
      return '';
    } else if (names.length == 1) {
      if (names[0].length > 0) {
        return names[0][0];
      } else {
        return '';
      }
      
    } else {
      return names[0][0] + '‌' + names[names.length - 1][0];
    }
  }
  static Color getColor(String name) {
    if (name == null || name == '') {
      return Color(colors[0]);
    }
    int result = Utf8Codec().encode(name).reduce((a, b) => a + b);
    return Color(colors[result%colors.length]);
  }
}