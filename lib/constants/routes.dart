
import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/introduction/firstscreen/first_intro_dialog.dart';
import 'package:kisukari_mobile_app/src/introduction/fourthscreen/fourth_otherdiseases.dart';
import 'package:kisukari_mobile_app/src/introduction/intro.dart';
import 'package:kisukari_mobile_app/src/introduction/resultsscreen/introresults.dart';
import 'package:kisukari_mobile_app/src/introduction/secondscreen/second_diabetestypes.dart';
import 'package:kisukari_mobile_app/src/introduction/thirdscreen/third_diabeticmedications.dart';
import 'package:kisukari_mobile_app/src/more_section/intermittentfasting/fastingmainscreen.dart';
import 'package:kisukari_mobile_app/src/notifications/homenotifications.dart';
import 'package:kisukari_mobile_app/src/reportsmain/widgets/customizereport.dart';
import 'package:kisukari_mobile_app/src/more_section/subscriptions/paymentoptions.dart';
import 'package:kisukari_mobile_app/src/more_section/subscriptions/subscriptionscreen.dart';
import 'package:kisukari_mobile_app/utils/settings/languagefile/languagescreen.dart';
import 'package:kisukari_mobile_app/src/mainentrypoint/mainentrypoint.dart';
import 'package:kisukari_mobile_app/src/signin/login.dart';
import 'package:kisukari_mobile_app/src/signin/otpscreen.dart';
import 'package:kisukari_mobile_app/src/signin/signup.dart';
import 'package:kisukari_mobile_app/src/splashscreen/splashscreen.dart';


const String splashScreen = '/splashscreen';
const String languageScreen = '/languagescreen';
const String introPage = '/intropage';
const String login = '/login';
const String signup = '/signup';
const String otpscreen = '/otpscreen';
const String firstintrodialog = '/firstintrodialog';
const String secondintrodialog = '/secondintrodialog';
const String thirdintrodialog = '/thirdintrodialog';
const String fourthintrodialog = '/fourthintrodialog';
const String resultsintrodialog = '/resultsintrodialog';
const String mainentrypoint = '/mainentrypoint';
const String customizereport = '/customizereport';
const String homenotifications = '/homenotifications';
const String subscriptionscreen = '/subscriptionscreen';
const String paymentoptions = '/paymentoptions';
const String fastingmainscreen = '/fastingmainscreen';



class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splashScreen: (context) => const SplashScreen(),
      languageScreen: (context) => const LanguageScreen(),
      introPage: (context) => const IntroPage(),
      login: (context) => const LogIn(),
      signup: (context) => const SignUp(),
      otpscreen: (context) => const OTPScreen(),
      firstintrodialog: (context) => const FirstIntroDialog(),
      secondintrodialog: (context) => const SecondScreenTypes(),
      thirdintrodialog: (context) => const ThirdDiabeticmedications(),
      fourthintrodialog: (context) => const FourthOtherdiseases(),
      resultsintrodialog: (context) => const IntroResults(),
      mainentrypoint: (context) => const MainEntryPoint(),
      customizereport: (context) => const CustomizeReport(),
      homenotifications: (context) => const HomeNotifications(),
      subscriptionscreen: (context) => const Subscriptionscreen(),
      paymentoptions: (context) => const PaymentOptions(),
      fastingmainscreen: (context) => const FastingMainScreen(),
    };
  }
}
