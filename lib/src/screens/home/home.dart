library home_screen;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_helper/src/icons/medical_icons_icons.dart';
import 'package:study_helper/src/utils/constants.dart';
import 'package:study_helper/src/widgets/widgets.dart';

part 'widgets/action.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: kIntroSpace),
            Text(
              'Welcome to',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'Medical Tutorial Home'.toUpperCase(),
              style: Theme.of(context).textTheme.headline1?.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: 24.0,
                    color: Colors.grey[300],
                  ),
            ),
            const SizedBox(height: 36.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryAction(
                  title: Text('Categories'),
                  icon: Icon(Icons.category),
                  onPressed: () {
                    context.push('/category');
                  },
                ),
                SizedBox(width: 16.0),
                PrimaryAction(
                  title: Text('All Lectures'),
                  icon: Icon(Icons.music_video),
                  onPressed: () {
                    context.push('/lecture');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
