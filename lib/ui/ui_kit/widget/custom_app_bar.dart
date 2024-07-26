import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:surf_flutter_summer_school_24/ui/ui_kit/widget/custom_bottom_sheet.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.preferredSize = const Size.fromHeight(56),
  });

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkTheme = theme.brightness == Brightness.dark;

    return AppBar(
      title: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Image.asset(
            isDarkTheme ? 'assets/png/logo_light_1.png' : 'assets/png/logo.png',
            width: 140,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return const CustomBottomSheet();
              },
            );
          },
          child: SvgPicture.asset(
            'assets/svg/icon_app_bar.svg',
            colorFilter: ColorFilter.mode(
              isDarkTheme ? Colors.white : Colors.black,
              BlendMode.srcIn,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
