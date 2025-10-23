import 'package:flutter/material.dart';

class SeparateText extends StatelessWidget {
  const SeparateText({super.key, this.textA, this.textB, this.styleA, this.styleB, this.onTap});
  final String? textA, textB;
  final TextStyle? styleA, styleB;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: textA,
              style: styleA ?? Theme.of(context).textTheme.bodyMedium,
            ),
            TextSpan(
              text: textB,
              style: styleB ?? Theme.of(context).textTheme.bodyMedium,
            ),
           
          ],
        ),
      ),
    );
  }
}