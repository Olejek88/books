import 'package:flutter/material.dart';

import '../../../main_lib.dart';

class ButtonDefault extends StatelessWidget {
  const ButtonDefault({Key? key, required this.title, this.onPressed, this.showArrow = false }) : super(key: key);

  final String title;
  final bool showArrow;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(10)),
        child: PlatformTextButton(
          onPressed: onPressed,
          child: Stack(
            children: [
              Center(
                child: Text(
                  title.toUpperCase(),
                  style: context.fontByStyle(ThemeTextStyle.title).copyWith(color: AppColors.accentText),
                ),
              ),
              if (showArrow) ...[
                const Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.arrow_forward_ios)
                  ),
                )
              ]
            ],
          ),
        ),
    );
  }
}
