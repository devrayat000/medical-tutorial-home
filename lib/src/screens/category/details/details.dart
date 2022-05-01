library category_details_screen;

import 'dart:developer';

import 'package:android_intent_plus/android_intent.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_helper/src/models/category.dart';
import 'package:study_helper/src/services/api.dart';
import 'package:study_helper/src/utils/constants.dart';
import 'package:study_helper/src/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

part './widgets/category_detail_builder.dart';

class CategoryDetailsScreen extends StatelessWidget {
  final CategoryBase category;

  const CategoryDetailsScreen({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          const SizedBox(height: kIntroSpace - kPagePadding),
          Padding(
            padding: const EdgeInsets.all(kPagePadding),
            child: AspectRatio(
              aspectRatio: 5 / 3,
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: _imageProvider,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category.title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      category.description,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: kIntroSpace - kPagePadding),
          Expanded(
            child: CategoryDetailBuilder(categoryId: category.id),
          ),
        ],
      ),
    );
  }

  static const _imageProvider = ExtendedAssetImageProvider(
    'assets/images/category_details.png',
    cacheRawData: true,
    imageCacheName: 'category_details',
  );
}

// Youtune thumb https://img.youtube.com/vi/3AtDnEC4zak/0.jpg
