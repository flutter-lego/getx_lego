import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../main.dart';
import '../../../../../config/getx_lego/_.dart';
import '../../../../shared_params/_/material_app.dart';
import '../../../widget/material_app/_.dart';

@ReadyBeforeRunApp(index: 1.0)
Future<void> readyForGetxLego() async {
  // setGetXPathUrlStrategy();

  currentMaterialApp = GetMaterialApp(
    localizationsDelegates: MaterialAppParams.localizationsDelegates,
    supportedLocales: MaterialAppParams.supportedLocales ?? const <Locale>[Locale('en', 'US')],
    locale: MaterialAppParams.locale,
    title: MaterialAppParams.appName,
    theme: MaterialAppParams.lightTheme,
    darkTheme: MaterialAppParams.darkTheme,
    themeMode: MaterialAppParams.themeMode ?? ThemeMode.system,
    debugShowCheckedModeBanner: false,
    builder: (context, child) {
      return materialAppInsideBuilder(context, child);
    },
    navigatorObservers: MaterialAppParams.navigatorObservers ?? [],
    home: MyAppHome ?? InitView(),
  );
}
