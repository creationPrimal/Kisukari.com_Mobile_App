import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kisukari_mobile_app/providers/chatfontsize.dart';
import 'package:kisukari_mobile_app/providers/communityproviders.dart';
import 'package:kisukari_mobile_app/providers/languagesettings.dart';
import 'package:kisukari_mobile_app/providers/reportduration.dart';
import 'package:kisukari_mobile_app/src/splashscreen/splashscreen.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/utils/loaders/mainloader.dart';
import 'package:kisukari_mobile_app/utils/settings/settings.dart';
import 'package:provider/provider.dart';


//TODO: ADD ALL REQUIRED PERMISSIONS TO BEGIN WITH

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  
  // initializing app loader func
  Future<void> _initApp() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  final data = GetStorage();
  
  // This widget is the root of application.
  @override 
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StorageProvider()),
        ChangeNotifierProvider(create: (context) => ReportDuration()),
        ChangeNotifierProvider(create: (context) => ChatFontSize()),
        ChangeNotifierProvider(create: (context) => ChatImagesLoader()),
        ChangeNotifierProvider(create: (context) => ChatVideosLoader()),
        ChangeNotifierProvider(create: (context) => ChatLoaderProvider()),
        ChangeNotifierProvider(create: (context) => HomePostLoader()),
        ChangeNotifierProvider(create: (context) => PostFontSize()),
        ChangeNotifierProvider(create: (context) => GroupsLoader()),
        ChangeNotifierProvider(create: (context) => FriendsLoader()),
      ],
      child: Builder(
        builder: (context) {

          
          final storageProvider = Provider.of<StorageProvider>(context);

          String savedLanguage = storageProvider.data ?? Settings.language;

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
              scaffoldBackgroundColor: Colors.white, // Sets the all scaffolds background color to white
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white, // Sets the all appBars background color to white
                iconTheme: IconThemeData(color: Colors.black), 
                scrolledUnderElevation: 0.0,
              ),
              useMaterial3: true,
            ),
          
            // language localizations
            localizationsDelegates: AppLocalizations.localizationsDelegates, 
            supportedLocales: AppLocalizations.supportedLocales,
            locale: /* _locale */ savedLanguage == 'Swahili' ? const Locale('sw', '') : const Locale('en', ''),
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
      ),
    );
  }
}






