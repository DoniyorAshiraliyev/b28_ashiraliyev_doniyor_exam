import 'package:b28_ashiraliyev_doniyor_exam/features/presentation/constants/colors.dart';
import 'package:b28_ashiraliyev_doniyor_exam/features/presentation/constants/text_styles.dart';
import 'package:flutter/material.dart';

Widget customItems({
  required String itemName,
  required String itemDescription,
  required String itemPrice,
  required Image itemImage,
  double itemNameFontSize = 16,
  double itemPriceFontSize = 16,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [itemImage],
      ),
      const SizedBox(height: 15),
      boldText(text: itemName, fontSize: itemNameFontSize),
      const SizedBox(height: 10),
      Text(
        itemDescription,
        style: contextTextStyle,
      ),
      const SizedBox(height: 15),
      Row(
        children: [
          boldText(text: itemPrice, fontSize: itemPriceFontSize),
          const SizedBox(width: 20),
          Image.asset(
            "assets/images/plus_icon.png",
            height: 30,
            width: 30,
          ),
        ],
      ),
    ],
  );
}

Widget button({required String text, bool isBorder = false}) {
  return Container(
    alignment: Alignment.center,
    height: 55,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 2),
      color: isBorder ? AppColors.whiteColor : AppColors.blackColor,
    ),
    child: boldText(
      text: text,
      fontSize: 16,
      color: isBorder ? AppColors.blackColor : AppColors.whiteColor,
    ),
  );
}
