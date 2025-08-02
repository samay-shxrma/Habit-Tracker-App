import 'package:flutter/material.dart';
import 'package:myapp/repository/widgets/uihelper.dart';

class CartScreen extends StatefulWidget {
  
   CartScreen({super.key});

  
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
    final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
         Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0xFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Blinkit in",
                          fontweight: FontWeight.bold,
                          color: Colors.black,
                          fontsize: 15,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "16 minutes",
                          fontweight: FontWeight.bold,
                          color: Colors.black,
                          fontsize: 20,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "HOME ",
                          fontweight: FontWeight.bold,
                          color: Colors.black,
                          fontsize: 14,
                          fontfamily: "bold",
                        ),
                        UiHelper.CustomText(
                          text: "- Samay, Sihani, Ghaziabad (U.P)",
                          fontweight: FontWeight.w500,
                          color: Colors.black,
                          fontsize: 14,
                          fontfamily: "regular",
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 85,
                child: CircleAvatar(
                  radius: 15,
                  child: Icon(Icons.person),
                  backgroundColor: Color(0xFFFFFFFF),
                ),
              ),
              Positioned(
                left: 18,
                right: 18,
                bottom: 30,
                child: UiHelper.CustomTextField(controller: searchController),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  UiHelper.CustomImage(img: "cart.png"),
                  SizedBox(height: 20),
                  UiHelper.CustomText(
                    text: "Reordering will be easy",
                    fontweight: FontWeight.bold,
                    color: Colors.black,
                    fontsize: 16,
                    fontfamily: "bold",
                    // textAlign: TextAlign.center,
                  ),
                  UiHelper.CustomText(
                    text: "Items you order will show up hear so you can buy",
                    fontweight: FontWeight.bold,
                    color: Colors.black,
                    fontsize: 12,
                    // textAlign: TextAlign.center,
                    fontfamily: "bold",
                  ),
                  UiHelper.CustomText(
                    text: "them easily",
                    fontweight: FontWeight.bold,
                    color: Colors.black,
                    // textAlign: TextAlign.center,
                    fontsize: 12,
                    fontfamily: "bold",
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      UiHelper.CustomText(
                        text: "Bestsellars",
                        fontweight: FontWeight.bold,
                        color: Colors.black,
                        fontsize: 16,
                        // textAlign: TextAlign.center,
                        fontfamily: "bold",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(height: 20),
                      SizedBox(width: 20),
                      Stack(
                        children: [
                          UiHelper.CustomImage(img: "milk.png"),
                          Padding(
                            child: UiHelper.CustomButton(() {}),
                            padding: EdgeInsetsGeometry.only(top: 95, left: 66),
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Stack(
                        children: [
                          UiHelper.CustomImage(img: "potato.png"),
                          Padding(
                            child: UiHelper.CustomButton(() {}),
                            padding: EdgeInsetsGeometry.only(top: 95, left: 66),
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Stack(
                        children: [
                          UiHelper.CustomImage(img: "tomato.png"),
                          Padding(
                            child: UiHelper.CustomButton(() {}),
                            padding: EdgeInsetsGeometry.only(top: 95, left: 66),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
