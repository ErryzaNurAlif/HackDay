import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final double? width;
  final double? height;
  final String nameTitle;
  final Function() onClick;

  const CustomButtom({
    Key? key,
    this.width,
    this.height,
    required this.nameTitle,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
    return Container(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xffE94560),
        ),
        onPressed: onClick,
        child: Text(
          nameTitle,
          style: const TextStyle(
            color: Color(0xffffffff),
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
