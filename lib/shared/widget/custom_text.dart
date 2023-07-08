import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.title,
      this.color,
      this.fontSize,
      this.fontWeight})
      : super(key: key);
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        title,
        maxLines: 8,
        style:
            TextStyle(color: color, fontSize: fontSize ?? 21, fontWeight: fontWeight,
            fontFamily: "ScheherazadeNew",
            overflow: TextOverflow.ellipsis
            
            ),
      ),
    );
  }
}
