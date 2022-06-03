import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';


const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(25)),
  borderSide: BorderSide.none,
);

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        onSaved: (value) {},
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Search",
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
          suffixIcon: const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: SizedBox(
              width: 48,
              height: 48,
            ),
          ),
        ),
      ),
    );
  }
}
