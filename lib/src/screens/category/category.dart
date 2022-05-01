library category_screen;

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:study_helper/src/models/category.dart';
import 'package:study_helper/src/services/api.dart';
import 'package:study_helper/src/utils/constants.dart';
import 'package:study_helper/src/widgets/widgets.dart';

part 'widgets/card.dart';
part 'widgets/category_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

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
              'Categories',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const SizedBox(height: 20.0),
          const Expanded(
            child: CategoryBuilder(),
          ),
        ],
      ),
    );
  }
}
