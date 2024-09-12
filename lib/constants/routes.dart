
import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityhome/widgets/postcontent.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitymessagess/communitymessages.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitymessagess/chatscreen/chatscreen.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitymessagess/chatinfoscreen/chatinfo.dart';
import 'package:kisukari_mobile_app/src/introduction/firstscreen/first_intro_dialog.dart';
import 'package:kisukari_mobile_app/src/introduction/fourthscreen/fourth_otherdiseases.dart';
import 'package:kisukari_mobile_app/src/introduction/intro.dart';
import 'package:kisukari_mobile_app/src/introduction/resultsscreen/introresults.dart';
import 'package:kisukari_mobile_app/src/introduction/secondscreen/second_diabetestypes.dart';
import 'package:kisukari_mobile_app/src/introduction/thirdscreen/third_diabeticmedications.dart';
import 'package:kisukari_mobile_app/src/more_section/appprofile/app_profile.dart';
import 'package:kisukari_mobile_app/src/more_section/appsettings/appsettings.dart';
import 'package:kisukari_mobile_app/src/more_section/appprofile/widgets/profiledetailsset.dart';
import 'package:kisukari_mobile_app/src/more_section/intermittentfasting/fastingmainscreen.dart';
import 'package:kisukari_mobile_app/src/more_section/plansandgoals/plansedit.dart';
import 'package:kisukari_mobile_app/src/more_section/plansandgoals/plansmain.dart';
import 'package:kisukari_mobile_app/src/more_section/self_test/selftest_eighthscreen.dart';
import 'package:kisukari_mobile_app/src/more_section/self_test/selftest_fifthscreen.dart';
import 'package:kisukari_mobile_app/src/more_section/self_test/selftest_fourthscreen.dart';
import 'package:kisukari_mobile_app/src/more_section/self_test/selftest_results.dart';
import 'package:kisukari_mobile_app/src/more_section/self_test/selftest_secondscreen.dart';
import 'package:kisukari_mobile_app/src/more_section/self_test/selftest_seventhscreen.dart';
import 'package:kisukari_mobile_app/src/more_section/self_test/selftest_sixthscreen.dart';
import 'package:kisukari_mobile_app/src/more_section/self_test/selftest_thirdscreen.dart';
import 'package:kisukari_mobile_app/src/more_section/self_test/selftestmain.dart';
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
const String mainprofilescreen = '/mainprofilescreen';
const String profiledetailsset = '/profiledetailsset';
const String appsettings = '/appsettings';
const String selftest = '/selftest';

// selftest screens
const String selftestsecondscreen = '/selftestsecondscreen';
const String selftestthirdscreen = '/selftestthirdscreen';
const String selftestfourthscreen = '/selftestfourthscreen';
const String selftestfifthscreen = '/selftestfifthscreen';
const String selftestsixthscreen = '/selftestsixthscreen';
const String selftestseventhscreen = '/selftestseventhscreen';
const String selftesteighthscreen = '/selftesteighthscreen';
const String selftestresultsscreen = '/selftestresultsscreen';

// other
const String plansmain = '/plansmain';
const String plansedit = '/plansedit';

// community
const String postcontent = '/postcontent';
const String communitymessages = '/communitymessages';
const String communitychat = '/communitychat';
const String communitychatinfo = '/communitychatinfo';







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
      mainprofilescreen: (context) => const AppProfile(),
      profiledetailsset: (context) => const ProfileHeightPicker(),
      appsettings: (context) => const AppSettings(),
      selftest: (context) => const SeleTestMain(),
      selftestsecondscreen: (context) => const SelfTestSecondScreen(),
      selftestthirdscreen: (context) => const SelfTestThirdScreen(),
      selftestfourthscreen: (context) => const SelfTestFourthScreen(),
      selftestfifthscreen: (context) => const SelfTestFifthScreen(),
      selftestsixthscreen: (context) => const SelfTestSixthScreen(),
      selftestseventhscreen: (context) => const SelfTestSeventhScreen(),
      selftesteighthscreen: (context) => const SelfTestEighthScreen(),
      selftestresultsscreen: (context) => const SelfTestResultScreen(),
      plansmain: (context) => const PlansMain(),
      plansedit: (context) => const PlansEdit(),
      postcontent: (context) => const PostContent(),
      communitymessages: (context) => const CommunityMessages(),
      communitychat: (context) => const CommunityChatScreen(),
      communitychatinfo: (context) => const ChatInfo(),
    };
  }
}
