import 'dart:async';

import 'package:device_preview/device_preview.dart';

import 'package:fitness_app/core/utils/styles/color_utils.dart';
import 'package:fitness_app/features/viewModel/baseState.dart';
import 'package:fitness_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/utils/apiUrls/env.dart';
import 'core/utils/function/dev_utils.dart';
import 'core/utils/sizeConfig/sizeConfig.dart';

import 'package:path_provider/path_provider.dart' as path_provider;

import 'features/onBoarding/onboarding.dart';
import 'features/viewModel/appState.dart';


Future <void> main()async {
  WidgetsFlutterBinding.ensureInitialized();

    await init();

  final appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();
  var box;
  Hive.init(appDocumentDirectory.path);


  // Hive.registerAdapter(ContactCardModelAdapter());
  FlutterError.onError = (FlutterErrorDetails details) async {
    final exception = details.exception;
    final stackTrace = details.stack;
    if(isInDebugMode){
      FlutterError.dumpErrorToConsole(details);
    }else{
      Zone.current.handleUncaughtError(exception, stackTrace);
    }
  };
  // var user = await  UserHive().getUser();

  final SharedPreferences sharedPref = await SharedPreferences.getInstance();
  Future<bool> isFirstTime() async {
    var isFirstTime = sharedPref.getBool('first_time');
    if (isFirstTime != null && !isFirstTime) {
      sharedPref.setBool('first_time', false);
      return false;
    } else {
      sharedPref.setBool('first_time', false);
      return true;
    }
  }


  bool hasUserUsedApp= false;
  isFirstTime().then((isFirstTimeb) {

    hasUserUsedApp  = isFirstTimeb;
  });
  runZonedGuarded<Future<void>>(()async {
    runApp(
        MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => AppState()),
              ChangeNotifierProvider(create: (_) => BaseViewModel()),
            ],
            child: MyApp(

                hasNotUserUsedApp: hasUserUsedApp
            )),
        // DevicePreview(
        //     enabled: true,
        //     builder: (context) =>
        //
        // )

    );

  }, (error, stackTrace) async{


  });







}

class MyApp extends StatefulWidget {
  bool hasNotUserUsedApp;

  MyApp({this.hasNotUserUsedApp});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {





  @override
  Widget build(BuildContext context) {

    setStatusBarColor(color: BarColor.black);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return  LayoutBuilder(
        builder: (context, constraints){
          return  OrientationBuilder(
              builder: (context, orientation){
            SizeConfig().init(constraints, orientation);
            var screenHeight = MediaQuery.of(context).size.height;
            return  MaterialApp(

                debugShowCheckedModeBanner: false,
                title: 'Fit24',
                theme: ThemeData(
                  fontFamily: 'DMSans',

                  primarySwatch: Colors.orange,
                ),
                home: Onboarding(
                  screenHeight: screenHeight,
                )
            );
          });
        });
  }


}

