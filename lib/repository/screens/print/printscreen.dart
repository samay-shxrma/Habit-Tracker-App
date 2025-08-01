import 'package:flutter/material.dart';
import 'package:myapp/repository/widgets/uihelper.dart';

class Printscreen extends StatefulWidget {
  const Printscreen({super.key});

  @override
  State<Printscreen> createState() => _PrintscreenState();
}

class _PrintscreenState extends State<Printscreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
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
                          text: "Blinkit",
                          fontweight: FontWeight.bold,
                          color: Colors.black,
                          fontsize: 15,
                          fontfamily: "bold",textAlign: TextAlign.center,
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "16 Minutes",
                          fontweight: FontWeight.bold,
                          color: Colors.black,textAlign: TextAlign.center,
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
                          fontsize: 14,textAlign: TextAlign.center,
                          fontfamily: "bold",
                        ),

                        UiHelper.CustomText(
                          text: "- Samay, Sihani, Ghaziabad (U.P)",
                          fontweight: FontWeight.w500,
                          color: Colors.black,textAlign: TextAlign.center,
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
                bottom: 30,
                child: UiHelper.CustomTextField(controller: SearchController()),
              ),
            ],
          ),
          SizedBox(height: 30),
          UiHelper.CustomText(
            text: "Print Store",
            fontweight: FontWeight.bold,
            color: Colors.black,textAlign: TextAlign.center,
            fontsize: 32,
            fontfamily: "bold",
          ),
          UiHelper.CustomText(
            text: "Blinkit ensures secure prints at every stage",
            fontweight: FontWeight.bold,
            color: Color(0XFF9C9C9C),
            fontsize: 14,textAlign: TextAlign.center,
            fontfamily: "bold",
          ),
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 180,
                width: 361,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Documents",
                          fontweight: FontWeight.bold,
                          color: Colors.black,
                          fontsize: 14,textAlign: TextAlign.center,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomImage(img: "star.png"),
                        SizedBox(width: 7),
                        UiHelper.CustomText(
                          text: "Price starting at rs 3/page",
                          fontweight: FontWeight.normal,
                          color: Color(0XFF9C9C9C),
                          fontsize: 15,textAlign: TextAlign.center,
                          fontfamily: "",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomImage(img: "star.png"),
                        SizedBox(width: 7),
                        UiHelper.CustomText(
                          text: "Paper quality: 70 GSM",
                          fontweight: FontWeight.normal,
                          color: Color(0XFF9C9C9C),
                          fontsize: 15,textAlign: TextAlign.center,
                          fontfamily: "",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomImage(img: "star.png"),
                        SizedBox(width: 7),
                        UiHelper.CustomText(
                          text: "Single side prints",
                          fontweight: FontWeight.normal,
                          color: Color(0XFF9C9C9C),textAlign: TextAlign.center,
                          fontsize: 15,
                          fontfamily: "",
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        SizedBox(
                          height: 40,
                          width: 125,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF27AF34),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Text(
                              "Upload Files",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                child: UiHelper.CustomImage(img: "document.png"),
                right: 20,
                bottom: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
