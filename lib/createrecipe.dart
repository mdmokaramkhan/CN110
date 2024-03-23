import 'package:flutter/material.dart';
import 'package:recipe_app/components/button/largebutton.dart';
import 'package:recipe_app/components/input.dart';
import 'package:recipe_app/style.dart';
import 'package:recipe_app/utils.dart';

class CreateRecipe extends StatelessWidget {
  const CreateRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Create a new recipe'),
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
                  lable: 'Title',
                  assetSVG: 'assets/icons/svg/Bookmark.svg',
                  iconColor: Style.colors.accentColor,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                CustomInput(
                  lable: 'Ingredients',
                  assetSVG: 'assets/icons/custom/notification.svg',
                  iconColor: Style.colors.primaryColor,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                CustomInput(
                  lable: 'Instructions',
                  assetSVG: 'assets/icons/custom/pipe.svg',
                  iconColor: Style.colors.colorFailed,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                CustomInput(
                  lable: 'Cooking Time',
                  assetSVG: 'assets/icons/custom/clock.svg',
                  iconColor: Style.colors.colorWarning,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                CustomInput(
                  lable: 'Difficulty Level',
                  assetSVG: 'assets/icons/custom/trusted.svg',
                  iconColor: Style.colors.colorSuccess,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                CustomInput(
                  lable: 'Serving Size',
                  assetSVG: 'assets/icons/custom/user.svg',
                  iconColor: Style.colors.colorWaiting,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                CustomInput(
                  lable: 'Meal Category',
                  assetSVG: 'assets/icons/custom/view.svg',
                  iconColor: Style.colors.primaryColor,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                CustomInput(
                  lable: 'Cuisine Type',
                  assetSVG: 'assets/icons/custom/heart.svg',
                  iconColor: Style.colors.colorSuccess,
                  validator: Utils.validators.required,
                ),
                const SizedBox(height: 10),
                ButtonLarge(
                  lable: 'Create recipe',
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
                              content: Text('Recipe successfully created'),
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
