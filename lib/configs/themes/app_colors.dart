import 'package:flutter/material.dart';
import 'package:flutter_study_app/configs/themes/ui_parameters.dart';

import 'app_dark_thme.dart';
import 'app_light_theme.dart';

const Color onSurfaceTextColor = Colors.white;

const mainGradientLight = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomRight,
    colors: [primaryLightColorLight, primaryColorLight]);

const mainGradientDark = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomRight,
    colors: [primaryDarkColorDark, primaryColorDark]);

LinearGradient mainGradient(BuildContext context) =>
    UiParameters.isDarkMode(context) ? mainGradientDark : mainGradientLight;
