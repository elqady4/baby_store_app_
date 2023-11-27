import 'package:baby_store_app/constants.dart';
import 'package:baby_store_app/core/providers/bottom_navigator_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigatorBar extends StatelessWidget {
  const CustomBottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigatorBarProvider>(
      builder: (context, provider, child) => BottomNavigationBar(
        selectedItemColor: kBlack,
        unselectedItemColor: kBlack,
        selectedFontSize: kNavigatorselectedFontSize,
        unselectedFontSize: kNavigatorUnselectedFontSize,
        showUnselectedLabels: true,
        items: kNavigatorIcons
            .asMap()
            .entries
            .map((entry) => BottomNavigationBarItem(
                  icon: Icon(
                    entry.value,
                    size:kIconSize ,
                    color: Colors.black, // Change the color to black
                  ),
                  label: kNavigatorTitles[entry.key],
                ))
            .toList(),
        currentIndex: provider.getSelectedIndex(),
        onTap: provider.selectBarIndex,
      ),
    );
  }
}
