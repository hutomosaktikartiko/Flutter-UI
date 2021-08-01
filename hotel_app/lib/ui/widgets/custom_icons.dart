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

ImageIcon iconNotification(String iconName) => ImageIcon(
      AssetImage("assets/icons/$iconName.png"),
      size: 24,
    );