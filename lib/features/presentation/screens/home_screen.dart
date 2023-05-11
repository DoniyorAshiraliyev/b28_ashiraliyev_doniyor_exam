import 'dart:math';

import 'package:b28_ashiraliyev_doniyor_exam/features/presentation/components/utils.dart';
import 'package:b28_ashiraliyev_doniyor_exam/features/presentation/constants/colors.dart';
import 'package:b28_ashiraliyev_doniyor_exam/features/presentation/screens/details_screen.dart';
import 'package:flutter/material.dart';

import '../constants/text_styles.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List myItems = ["Macbooks", "Watches", "iPhones"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: ColoredBox(
                color: AppColors.blackColor,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 35,
                    bottom: 35,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/apple_icon.png",
                        width: 20,
                        height: 25,
                      ),
                      // Spacer(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i = 0; i < 3; i++)
                                Transform.rotate(
                                  angle: -pi / 2,
                                  child: Text(
                                    myItems[i],
                                    style: tranformTextStyle,
                                  ),
                                ),
                            ]),
                      ),

                      // Spacer(),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, DetailsScreen.id),
                        child: Image.asset(
                          "assets/images/home_icon.png",
                          width: 27,
                          height: 27,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset("assets/images/search_icon.png"),
                          ],
                        ),
                      ),
                      const Text(
                        "Apple",
                        style: TextStyle(
                            color: Color.fromARGB(119, 112, 112, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins"),
                      ),
                      boldText(text: "Watches", fontSize: 22),
                      const SizedBox(
                        height: 45,
                      ),
                      customItems(
                        itemName: "Series 3",
                        itemPrice: "\$295.00",
                        itemDescription:
                            "The Apple watch series 3 is designed\nfor people who want to keep their\nfitness game on point.",
                        itemImage: Image.asset(
                          "assets/images/watch_img.png",
                          height: 180,
                          width: 160,
                        ),
                      ),
                      const SizedBox(height: 40),
                      customItems(
                        itemName: "Series 5",
                        itemPrice: "\$295.00",
                        itemDescription:
                            "The Apple watch series 3 is designed\nfor people who want to keep their\nfitness game on point.",
                        itemImage: Image.asset(
                          "assets/images/watch2_img.png",
                          height: 180,
                          width: 160,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
