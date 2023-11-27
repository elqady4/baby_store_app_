import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: kSearchHint,
          prefixIcon: IconButton(
            color: kDarkBlue,
            onPressed: () {},
            icon: const Opacity(
              opacity: .8,
              child: Icon(
                Icons.search,
                size: kIconSize,
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: kGrey,
      ),
      borderRadius: BorderRadius.circular(
        12,
      ),
    );
  }
}
