import 'package:flutter/material.dart';

class Movie {
  /// 名称
  final String name;

  /// 简介
  final String intro;

  /// 海报图片
  final String poster;

  /// 上映日期
  final String date;

  /// 票价
  final String price;

  const Movie({
    @required this.name,
    @required this.intro,
    @required this.poster,
    @required this.date,
    @required this.price,
  });

}
