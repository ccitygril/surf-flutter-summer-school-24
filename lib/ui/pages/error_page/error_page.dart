import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/typography/typograhy.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/widget/custom_app_bar.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/widget/custom_button.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/png/smail.png"),
            const Text(
              'Упс!',
              style: AppTypography.slimbold32,
            ),
            const Text(
              'Произошла ошибка.',
              style: AppTypography.normal16,
            ),
            const Text(
              'Попробуйте снова.',
              style: AppTypography.normal16,
            ),
            CustomButton(
              onTap: () {},
              title: "попробуйте снова",
            ),
          ],
        ),
      ),
    );
  }
}
