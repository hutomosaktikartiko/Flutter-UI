import 'package:flutter/material.dart';
import 'package:hotel_app/config/text_style.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel(this.label, {this.viewAllOnTap, Key? key})
      : super(key: key);

  final Function? viewAllOnTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: blackTextStyle.copyWith(
              fontSize: 18, fontWeight: FontWeight.w600),
        ),
        (viewAllOnTap == null)
            ? SizedBox.shrink()
            : GestureDetector(
                onTap: () => viewAllOnTap!(),
                child: Text(
                  "View all",
                  style: mainColor2TextStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
              )
      ],
    );
  }
}
