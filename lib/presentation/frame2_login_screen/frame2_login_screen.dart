import 'package:flutter/material.dart';
import 'package:pharmaconnect/core/app_export.dart';
import 'package:pharmaconnect/widgets/custom_elevated_button.dart';
import 'package:pharmaconnect/widgets/custom_text_form_field.dart';

class Frame2LoginScreen extends StatelessWidget {
  Frame2LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController xyzController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 40.h,
              vertical: 51.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.v),
                CustomImageView(
                  imagePath: ImageConstant.imgMinimalistLogo,
                  height: 207.v,
                  width: 197.h,
                  radius: BorderRadius.circular(
                    98.h,
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(height: 30.v),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: AppDecoration.outlineBlack,
                    child: Text(
                      "Welcome to our App ",
                      style: CustomTextStyles.titleMediumBlack900,
                    ),
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 96.h),
                  child: Text(
                    "Log in",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "E-mail",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    right: 16.h,
                  ),
                  child: CustomTextFormField(
                    controller: emailController,
                    hintText: "Johndoe@exemple.com",
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 41.v),
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "Password",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    right: 16.h,
                  ),
                  child: CustomTextFormField(
                    controller: xyzController,
                    hintText: "xyz12@#",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    borderDecoration: TextFormFieldStyleHelper.outlineBlackTL27,
                    fillColor: appTheme.blueGray100,
                  ),
                ),
                SizedBox(height: 50.v),
                CustomElevatedButton(
                  text: "LOGIN",
                ),
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.only(left: 70.h),
                  child: Row(
                    children: [
                      Text(
                        "No account?",
                        style: theme.textTheme.titleSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Sign up",
                          style: CustomTextStyles.titleSmallDeeporange400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
