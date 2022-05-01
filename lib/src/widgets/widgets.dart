library widgets;

import 'package:android_intent_plus/android_intent.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:study_helper/src/icons/medical_icons_icons.dart';
import 'package:study_helper/src/models/lecture.dart';
import 'package:study_helper/src/utils/error_handler.dart';
import 'package:url_launcher/url_launcher.dart';

part './async_builder.dart';
part './lecture_tile.dart';

PreferredSizeWidget MyAppBar({bool isHome = false}) => AppBar(
      title: ExtendedImage.asset(
        'assets/images/logo/logo.png',
        fit: BoxFit.fitHeight,
        // height: kToolbarHeight,
        cacheRawData: true,
        imageCacheName: 'appbar-brand',
      ),
      automaticallyImplyLeading: true,
      centerTitle: true,
      leading: isHome
          ? IconButton(
              onPressed: () {},
              icon: const Icon(MedicalIcons.hamburger),
              splashRadius: Material.defaultSplashRadius - 4,
            )
          : null,
    );
