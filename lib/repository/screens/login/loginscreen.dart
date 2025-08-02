// import 'package:blinkit_series/repository/screens/bottomnav/bottomnavscreen.dart';
// import 'package:blinkit_series/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:myapp/repository/screens/bottomNavbar/bottomnavscreen.dart';
import 'package:myapp/repository/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
              SizedBox(height: 10),
              UiHelper.CustomImage(img: "image 10.png"),
              SizedBox(height: 10),
              UiHelper.CustomText(
                text: "India's last minute app",
                color: Color(0xFF000000),
                fontweight: FontWeight.bold,
                fontsize: 20,
                fontfamily: "bold",
                // textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      UiHelper.CustomText(
                        text: "Samay",
                        fontweight: FontWeight.w500,
                        color: Colors.black,
                        // textAlign: TextAlign.center,
                        fontsize: 14,
                        fontfamily: "regular",
                      ),
                      SizedBox(height: 5),
                      UiHelper.CustomText(
                        // textAlign: TextAlign.center,
                        text: "85955XXXX",
                        fontweight: FontWeight.bold,
                        color: Colors.black,
                        fontsize: 14,
                        fontfamily: "bold",
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomText(
                                text: "Login with",
                                fontweight: FontWeight.bold,
                                color: Colors.white,
                                // textAlign: TextAlign.center,
                                fontsize: 14,
                                fontfamily: "bold",
                              ),
                              SizedBox(width: 5),
                              UiHelper.CustomImage(img: "image 9.png"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      UiHelper.CustomText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        fontweight: FontWeight.normal,
                        color: Colors.black,
                        // textAlign: TextAlign.center,
                        fontsize: 10,
                        fontfamily: "normal",
                      ),
                      SizedBox(height: 20),
                      UiHelper.CustomText(
                        text: "or login with phone number",
                        fontweight: FontWeight.normal,
                        // textAlign: TextAlign.center,
                        color: Color(0xFF269237),
                        fontsize: 15,
                        fontfamily: "regular",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
