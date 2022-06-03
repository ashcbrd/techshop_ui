import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techstack/screens/home/constants.dart';
import 'components/categories.dart';
import 'components/trending_now.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "FIND YOUR TECH",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 24),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: Categories(),
            ),
            const NewArrivalProducts(),
          ],
        ),
      ),
    );
  }
}
