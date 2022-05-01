library lecture_screen;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_helper/src/models/lecture.dart';
import 'package:study_helper/src/services/api.dart';
import 'package:study_helper/src/utils/constants.dart';
import 'package:study_helper/src/widgets/widgets.dart';

part './widgets/lecture_builder.dart';

class LectureScreen extends StatelessWidget {
  const LectureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: kIntroSpace - kPagePadding),
          Padding(
            padding: const EdgeInsets.all(kPagePadding),
            child: Text(
              'Lectures',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const SizedBox(height: 20.0),
          const Expanded(
            child: LectureBuilder(),
          ),
        ],
      ),
    );
  }
}
