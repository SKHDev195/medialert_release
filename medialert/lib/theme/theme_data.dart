import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

sealed class AppTheme {
  static const dialogDarkBackgroundColor = Color.fromARGB(255, 39, 71, 77);
  static const dialogLightBackgroundColor = Color.fromARGB(255, 255, 255, 255);
  static const backgroundColorForPositiveInteractables =
      Color.fromARGB(229, 57, 189, 90);
  static const backgroundColorForNegativeInteractables =
      Color.fromARGB(255, 225, 86, 86);
  static final lightTheme = FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: Color(0xff00296b),
      primaryContainer: Color(0xffa0c2ed),
      secondary: Color(0xffd26900),
      secondaryContainer: Color(0xffffd270),
      tertiary: Color(0xff5c5c95),
      tertiaryContainer: Color(0xffc8dbf8),
      appBarColor: Color(0xffc8dcf8),
      error: null,
    ),
    usedColors: 7,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 7,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      blendOnColors: false,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      adaptiveSplash: FlexAdaptive.all(),
      splashType: FlexSplashType.inkSplash,
      splashTypeAdaptive: FlexSplashType.inkSplash,
      defaultRadius: 13.0,
      inputDecoratorBorderType: FlexInputBorderType.underline,
      inputDecoratorRadius: 0.0,
      inputDecoratorUnfocusedHasBorder: false,
      inputDecoratorFocusedBorderWidth: 0.5,
      fabUseShape: true,
      alignedDropdown: true,
      useInputDecoratorThemeInDialogs: true,
    ),
    keyColors: const FlexKeyColors(),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    fontFamily: 'NeverMindCompact',
  );

  static final darkTheme = FlexThemeData.dark(
    colors: const FlexSchemeColor(
      primary: Color(0xffb1cff5),
      primaryContainer: Color(0xff3873ba),
      secondary: Color(0xffffd270),
      secondaryContainer: Color(0xffd26900),
      tertiary: Color(0xffc9cbfc),
      tertiaryContainer: Color(0xff535393),
      appBarColor: Color(0xff00102b),
      error: null,
    ),
    usedColors: 7,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 13,
    appBarStyle: FlexAppBarStyle.material,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      adaptiveSplash: FlexAdaptive.all(),
      splashType: FlexSplashType.inkSplash,
      splashTypeAdaptive: FlexSplashType.inkSplash,
      defaultRadius: 13.0,
      inputDecoratorSchemeColor: SchemeColor.surfaceTint,
      inputDecoratorBackgroundAlpha: 16,
      inputDecoratorBorderType: FlexInputBorderType.underline,
      inputDecoratorRadius: 0.0,
      inputDecoratorUnfocusedHasBorder: false,
      inputDecoratorFocusedBorderWidth: 0.5,
      fabUseShape: true,
      alignedDropdown: true,
      useInputDecoratorThemeInDialogs: true,
    ),
    keyColors: const FlexKeyColors(),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    fontFamily: 'NeverMindCompact',
  );
}
