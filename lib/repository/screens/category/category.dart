import 'package:flutter/material.dart';
import 'package:myapp/repository/widgets/uihelper.dart';

class CategoryScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  final grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"},
  ];

  final secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits & \nCereals"},
    {"img": "image 22.png", "text": "Kitchen & \nAppliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"},
  ];

  final snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips & \nNamkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocolates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces & \nSpreads"},
    {"img": "image 35.png", "text": "Beauty & \nCosmetics"},
  ];

  var hosuehold = [
    {"img": "image 36.png", "text": "Surf & \nDishwash"},
    {"img": "image 37.png", "text": "Soap"},
    {"img": "image 38.png", "text": "Deo"},
    {"img": "image 39.png", "text": "Sofa"},
    {"img": "image 40.png", "text": "Oil"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
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
          // Scrollable content below
          Expanded(
            

            child: SafeArea(
              top: false,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: UiHelper.CustomText(
                        text: "Grocery & Kitchen",
                        fontweight: FontWeight.bold,
                        color: Colors.black,
                        fontsize: 14,
                        fontfamily: "bold",
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
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
                    SizedBox(height: 20),
                    SizedBox(
                      height: 140,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 20),
                        itemCount: secondgrocery.length,
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
                                    img: secondgrocery[index]["img"].toString(),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              UiHelper.CustomText(
                                text: secondgrocery[index]["text"].toString(),
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
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: UiHelper.CustomText(
                        text: "Snacks & Drinks",
                        fontweight: FontWeight.bold,
                        color: Colors.black,
                        fontsize: 14,
                        fontfamily: "bold",
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 140,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 20),
                        itemCount: snacksanddrinks.length,
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
                                        snacksanddrinks[index]["img"]
                                            .toString(),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              UiHelper.CustomText(
                                text: snacksanddrinks[index]["text"].toString(),
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

                    SizedBox(height: 20),
                    SizedBox(
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
                    SizedBox(height: 20),

                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Household",
                          fontweight: FontWeight.bold,
                          color: Colors.black,
                          fontsize: 14,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 140,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 20),
                        itemCount: hosuehold.length,
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
                                    img: hosuehold[index]["img"].toString(),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              UiHelper.CustomText(
                                text: hosuehold[index]["text"].toString(),
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
