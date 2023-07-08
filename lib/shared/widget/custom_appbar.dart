import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

PreferredSizeWidget customAppBar({
  required String title,
  double? fontSize,
}) {
  return AppBar(
    leading: GestureDetector(
      onTap: () => Get.back(),
      child: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
        size: 30,
      ),
    ),
    backgroundColor: Colors.white38,
    elevation: 0,
    centerTitle: true,
    title: CustomText(
      title: title,
      color: Colors.black,
      fontSize: fontSize ?? 21,
    ),
  );
}
