import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.style,
    required this.data,
    this.alignment = Alignment.centerRight,
    this.textAlign = TextAlign.end,
  });

  final Alignment alignment;
  final TextAlign textAlign;
  final String data;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment != Alignment.centerRight
          ? alignment
          : Alignment.centerRight,
      child: Text(
        data,
        style: style,
        textAlign: textAlign != TextAlign.end ? textAlign : TextAlign.end,
        softWrap: true,
        maxLines: null,
        overflow: TextOverflow.visible,
      ),
    );
  }
}
