import 'package:flutter/material.dart';
import 'package:recipe_app/components/button/largebutton.dart';
import 'package:recipe_app/components/input.dart';
import 'package:recipe_app/style.dart';
import 'package:recipe_app/utils.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Edit Profile'),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomInput(
                  lable: 'Full Name',
                  assetSVG: 'assets/icons/custom/user.svg',
                  iconColor: Style.colors.accentColor,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                CustomInput(
                  lable: 'Email address',
                  assetSVG: 'assets/icons/custom/notification.svg',
                  iconColor: Style.colors.primaryColor,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                CustomInput(
                  lable: 'Phone Number',
                  assetSVG: 'assets/icons/custom/pipe.svg',
                  iconColor: Style.colors.colorFailed,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                CustomInput(
                  lable: 'Location',
                  assetSVG: 'assets/icons/custom/clock.svg',
                  iconColor: Style.colors.colorWarning,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                CustomInput(
                  lable: 'Username',
                  assetSVG: 'assets/icons/custom/trusted.svg',
                  iconColor: Style.colors.colorSuccess,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                ButtonLarge(
                  lable: 'Update',
                  color: Style.colors.primaryColor,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Utils.show.fullScreenLoading2(context);
                      Future.delayed(
                        const Duration(seconds: 2),
                        () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Profile successfully updated'),
                              backgroundColor: Colors.green,
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
