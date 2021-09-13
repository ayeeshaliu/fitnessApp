import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/utils/apiUrls/env.dart';
import 'core/utils/function/dev_utils.dart';
import 'core/utils/sizeConfig/sizeConfig.dart';

import 'package:path_provider/path_provider.dart' as path_provider;


Future <void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();


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
        DevicePreview(
            enabled: true,
            builder: (context) =>
                MultiProvider(
                    providers: [
                      // ChangeNotifierProvider(create: (_) => AppState()),

                    ],
                    child: MyApp(

                        hasNotUserUsedApp: hasUserUsedApp
                    ))
        )

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
          return  OrientationBuilder(builder: (context, orientation){
            SizeConfig().init(constraints, orientation);
            return  MaterialApp(
                supportedLocales: context.supportedLocales,
                localizationsDelegates: context.localizationDelegates,
                locale: context.locale,
                debugShowCheckedModeBanner: false,
                title: 'Primhex',
                theme: ThemeData(
                  fontFamily: 'DMSans',
                  primarySwatch: Colors.blue,
                ),
                home: Container()
            );
          });
        });
  }


}

