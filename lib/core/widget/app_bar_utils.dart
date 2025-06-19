import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../thems/thems.dart';
import 'animated_svg_icon.dart';
import 'text_utils.dart';

PreferredSizeWidget appBarUtils(
    {required BuildContext context, required String title}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: whiteclr,
    leading: Row(
      children: [
        const Spacer(),
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Container(
            padding: EdgeInsets.all(12.w),
            decoration:
                const BoxDecoration(color: offWhiteClr, shape: BoxShape.circle),
            child: const Center(child: Icon(Icons.arrow_back_outlined)),
          ),
        ),
      ],
    ),
    title: TextAppBarUtils(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        text: title),
  );
}

class TextAppBarUtils extends StatefulWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const TextAppBarUtils({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
  });

  @override
  _TextAppBarUtilsState createState() => _TextAppBarUtilsState();
}

class _TextAppBarUtilsState extends State<TextAppBarUtils>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500), // Animation duration
    );

    // Define the animation
    _animation = Tween<Offset>(
      begin: const Offset(-0.5, 0.0), // Start slightly to the left
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut, // Animation curve
    ));

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: TextUtils(
          fontSize: widget.fontSize,
          fontWeight: widget.fontWeight,
          color: widget.color,
          text: widget.text),
    );
  }
}
