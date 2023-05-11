import 'package:b28_ashiraliyev_doniyor_exam/features/presentation/constants/colors.dart';
import 'package:b28_ashiraliyev_doniyor_exam/features/presentation/constants/text_styles.dart';
import 'package:b28_ashiraliyev_doniyor_exam/features/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../components/utils.dart';

class DetailsScreen extends StatefulWidget {
  static const String id = "details_screen";
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        actions: [
          Image.asset(
            "assets/images/heart_icon.png",
            height: 35,
            width: 35,
          ),
          const SizedBox(
            width: 20,
          )
        ],
        leading: GestureDetector(
          onTap: () =>
              Navigator.of(context).pushReplacementNamed(HomeScreen.id),
          child: Image.asset(
            "assets/images/arrow_icon.png",
            height: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                customItems(
                  itemName: "Series 5",
                  itemPrice: "\$295.00",
                  itemDescription:
                      "The Apple watch series 3 is designed\nfor people who want to keep their\nfitness game on point.",
                  itemImage: Image.asset(
                    "assets/images/watch2_img.png",
                    width: MediaQuery.of(context).size.width * 3 / 5,
                  ),
                  itemNameFontSize: 24,
                  itemPriceFontSize: 22,
                ),
                const SizedBox(height: 50),
                button(text: "PROCEED TO BUY"),
                const SizedBox(height: 20),
                button(text: "ADD TO CART", isBorder: true),
              ]),
        ),
      ),
    );
  }
}
