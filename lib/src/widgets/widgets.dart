library widgets;

import 'dart:developer';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:study_helper/src/icons/medical_icons_icons.dart';

part './async_builder.dart';

PreferredSizeWidget MyAppBar() => AppBar(
      title: ExtendedImage.asset(
        'assets/images/logo/logo.png',
        fit: BoxFit.fitHeight,
        height: kToolbarHeight + 48,
        cacheRawData: true,
        imageCacheName: 'appbar-brand',
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(MedicalIcons.hamburger),
      ),
    );
