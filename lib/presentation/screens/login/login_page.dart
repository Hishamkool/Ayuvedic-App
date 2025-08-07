import 'package:app/core/constants/app_colors.dart';
import 'package:app/presentation/widgets/custom_textfiled_with_label_widget.dart';
import 'package:app/presentation/widgets/elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: SizedBox.expand(
          child: Column(
            children: [
              /* top section */
              SizedBox(
                // aspectRatio: 16/9,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/png/login_background.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Image(
                          image: AssetImage("assets/images/png/small_logo.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      
              /* login form */
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 10.0,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 350,
                        height: 68,
                        child: const Text(
                          "Login Or Register To Book Your Appointments",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
      
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      CustomTextfiledWithLabelWidget(
                        hintText: "Enter your email",
                        label: "Email",
                      ),
                      const SizedBox(height: 30),
                      CustomTextfiledWithLabelWidget(
                        hintText: "Enter password",
                        label: "Password",
                        obscureText: true,
                      ),
      
                      const SizedBox(height: 135),
                      ElevatedButtonWidget(label: "Login"),
                      const Spacer(),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text.rich(
                            TextSpan(
                              text:
                                  "By creating or logging into an account you are agreeing with our ",
                              children: [
                                TextSpan(
                                  text: "Terms and Conditions",
                                  style: TextStyle(
                                    color: AppColors.hyperLinks,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: " and "),
                                TextSpan(
                                  text: "Privacy Policy.",
                                  style: TextStyle(
                                    color: AppColors.hyperLinks,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
