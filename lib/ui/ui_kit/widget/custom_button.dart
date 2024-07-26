import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/typography/typograhy.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const CustomButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        title.toUpperCase(),
        style: AppTypography.normal13.copyWith(color: Colors.white),
      ),
    );
  }
}
