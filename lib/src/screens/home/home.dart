library home_screen;

import 'package:flutter/material.dart';
import 'package:study_helper/src/icons/medical_icons_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo/logo.png',
          fit: BoxFit.fitHeight,
          height: kToolbarHeight + 48,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(MedicalIcons.hamburger),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome to',
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            'Medical Tutorial Home',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
