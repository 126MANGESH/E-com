import 'package:ecom/const/const.dart';
import 'package:flutter/material.dart';

Widget bgWidget({required Scaffold child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}
