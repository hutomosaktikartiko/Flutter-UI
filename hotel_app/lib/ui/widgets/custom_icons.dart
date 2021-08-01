import 'package:flutter/material.dart';
import 'package:hotel_app/config/custom_color.dart';

Icon iconStar() => Icon(
      Icons.star,
      color: starColor,
      size: 18,
    );

Icon iconPlace() => Icon(
      Icons.place,
      color: orange,
      size: 15,
    );

ImageIcon iconNavigator(String iconName) => ImageIcon(
      AssetImage("assets/icons/$iconName.png"),
      size: 24,
    );

ImageIcon iconImage(String iconName, {double? size, Color? color}) => ImageIcon(
      AssetImage("assets/icons/$iconName.png"),
      size: size ?? 24,
      color: color ?? Colors.white,
    );

TextButton iconButton(String iconName,
        {Function? onTap,
        Color? iconColor,
        Color? backgroundColor,
        double? size}) =>
    TextButton(
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? whiteColorBackground,
          padding: EdgeInsets.all(6),
          minimumSize: Size(0, 0)),
      child: iconImage(iconName, color: iconColor, size: size),
      onPressed: () {
        if (onTap != null) {
          onTap();
        }
      },
    );

TextButton iconButtonWithCounter(String iconName, {Function? onTap}) =>
    TextButton(
      style: TextButton.styleFrom(
          backgroundColor: whiteColorBackground,
          padding: EdgeInsets.all(6),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          minimumSize: Size(0, 0)),
      child: Stack(
        children: [
          iconImage(iconName),
          Positioned(
            right: 0,
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(color: orange, shape: BoxShape.circle),
            ),
          )
        ],
      ),
      onPressed: () {
        if (onTap != null) {
          onTap();
        }
      },
    );
