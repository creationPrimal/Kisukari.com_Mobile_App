import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kisukari_mobile_app/src/splashscreen/splashscreen.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  /* static void setLocale(BuildContext context, Locale locale) {} */
}
/* 
  void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
 */

class _MyAppState extends State<MyApp> {
  //setting app localization
 /*  Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }
 */

  // initializing app loader func
  Future<void> _initApp() async {
    await Future.delayed(const Duration(seconds: 3));
  }

   
  // This widget is the root of your application.
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // language localizations
      localizationsDelegates: AppLocalizations.localizationsDelegates, 
      supportedLocales: AppLocalizations.supportedLocales,
      locale: /* _locale */ const Locale('sw', ''),
      // this loads the app first before opening the splash screen
      home: FutureBuilder(
        future: _initApp(), 
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const InitialLoader(); // initial loader
          } else {
            return const SplashScreen(); // splash screen
          }
        }
      ),
      routes: Routes.getRoutes(),
    );
  }
}


// Initial loader to initialize app

class InitialLoader extends StatelessWidget {
  const InitialLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator()
      )
    );
  }
}




