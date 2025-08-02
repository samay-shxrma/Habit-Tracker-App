import 'package:flutter/material.dart';
import 'package:myapp/domain/constraints/appcolors.dart';
import 'package:myapp/repository/widgets/uihelper.dart';

class HomeScreen extends StatefulWidget {
  
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  var arr = [
    {"img": "image 50.png", "text": "Light, Diyas \n & Candles"},
    {"img": "image 51.png", "text": "Diwali & \n Gifts"},
    {"img": "image 52.png", "text": "Appliances \n& Gadgets"},
    {"img": "image 53.png", "text": "Home \n & Living"},
  ];

  var category = [
    {"img": "image 54.png", "text": "Golden Glass\nWooden Lid Candle (Oudh)"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun \nBy Bikano"},
    {"img": "image 63.png", "text": "Golden Glass\nWooden Lid Candle (Oudh)"},
  ];


final grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"},
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0xFFEC0505),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Blinkit in",
                          fontweight: FontWeight.bold,
                          color: Colors.white,
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
                          color: Colors.white,
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
                          color: Colors.white,
                          fontsize: 14,
                          fontfamily: "bold",
                        ),
                        UiHelper.CustomText(
                          text: "- Samay, Sihani, Ghaziabad (U.P)",
                          fontweight: FontWeight.w500,
                          color: Colors.white,
                          fontsize: 14,
                          fontfamily: "regular",
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_drop_down, color: Colors.white),
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
          Container(height: 1, width: double.infinity),
          Container(
            height: 196,
            width: double.infinity,
            color: Color(0xFFEC0505),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper.CustomImage(img: "image 60.png"),
                    UiHelper.CustomImage(img: "image 55.png"),
                    UiHelper.CustomText(
                      text: "Mega Diwali Sale",
                      fontweight: FontWeight.bold,
                      color: Colors.white,
                      fontsize: 20,
                      fontfamily: "bold",
                    ),
                    UiHelper.CustomImage(img: "image 55.png"),
                    UiHelper.CustomImage(img: "image 60.png"),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 5,
                            top: 1,
                            bottom: 1,
                          ),
                          child: Container(
                            height: 108,
                            width: 86,

                            decoration: BoxDecoration(
                              color: Color(0xFFEAD3D3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.CustomText(
                                  text: arr[index]["text"].toString(),
                                  fontweight: FontWeight.bold,
                                  color: Colors.black,
                                  fontsize: 10,
                                  fontfamily: "bold",
                                ),
                                UiHelper.CustomImage(
                                  img: arr[index]["img"].toString(),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: arr.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Should be Scrollable 
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 108,
                          width: 93,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: UiHelper.CustomImage(
                            img: category[index]["img"].toString(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: UiHelper.CustomText(
                          text: category[index]["text"].toString(),
                          fontweight: FontWeight.bold,
                          color: Colors.black,
                          fontsize: 10,
                          fontfamily: "bold",
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Row(
                          children: [
                            UiHelper.CustomImage(img: "timer 4.png"),
                            UiHelper.CustomText(
                              text: "16 MINS",
                              color: Color(0XFF9C9C9C),
                              fontweight: FontWeight.normal,
                              fontsize: 12,
                              fontfamily: "regular",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Row(
                          children: [
                            UiHelper.CustomImage(img: "image 50 (1).png"),
                            UiHelper.CustomText(
                              text: "79",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 15,
                              fontfamily: "bold",
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(
                text: "Grocery & Kitchen",
                fontweight: FontWeight.bold,
                color: Colors.black,
                fontsize: 14,
                fontfamily: "bold",
              ),
            ],
          ),

          SizedBox(height: 10),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 140,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 20),
                          itemCount: grocerykitchen.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: 78,
                                    width: 71,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFFD9EBEB),
                                    ),
                                    child: UiHelper.CustomImage(
                                      img:
                                          grocerykitchen[index]["img"].toString(),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                UiHelper.CustomText(
                                  text: grocerykitchen[index]["text"].toString(),
                                  fontweight: FontWeight.normal,
                                  color: Colors.black,
                                  fontsize: 14,
                                  fontfamily: "regular",
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),

        ],
      ),
    );
  }
}
