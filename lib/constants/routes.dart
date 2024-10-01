
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
import 'package:kisukari_mobile_app/src/learning/learning/pages/articlepage/articlepage.dart';
import 'package:kisukari_mobile_app/src/learning/learning/pages/readarticle/readarticle.dart';
import 'package:kisukari_mobile_app/src/more_section/appprofile/app_profile.dart';
import 'package:kisukari_mobile_app/src/more_section/appsettings/appsettings.dart';
import 'package:kisukari_mobile_app/src/more_section/appprofile/widgets/profiledetailsset.dart';
import 'package:kisukari_mobile_app/src/more_section/doctorsrecommendations/congrats.dart';
import 'package:kisukari_mobile_app/src/more_section/doctorsrecommendations/doctorsrecom.dart';
import 'package:kisukari_mobile_app/src/more_section/doctorsrecommendations/recomreports.dart';
import 'package:kisukari_mobile_app/src/more_section/intermittentfasting/fastingmainscreen.dart';
import 'package:kisukari_mobile_app/src/more_section/mr_kisukari/mr_kisukari.dart';
import 'package:kisukari_mobile_app/src/more_section/onlineconsultation/congrats.dart';
import 'package:kisukari_mobile_app/src/more_section/onlineconsultation/consultation.dart';
import 'package:kisukari_mobile_app/src/more_section/onlineconsultation/dateselection.dart';
import 'package:kisukari_mobile_app/src/more_section/onlineconsultation/myconsultations.dart';
import 'package:kisukari_mobile_app/src/more_section/plansandgoals/plansedit.dart';
import 'package:kisukari_mobile_app/src/more_section/plansandgoals/plansmain.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/heartdiseaseassessment/heartassessment.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/mentalassessment/mentalassessment.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/riskassessmentmain.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/sugarassessment/sugarassessment.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/woundassessment/woundassessmentmain.dart';
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

// risk assessment
const String riskassessment = '/riskassessment';
const String sugarassessment = '/sugarassessment';
const String woundstest = '/woundstest';
const String mentalassessment = '/mentalassessment';
const String heartassessment = '/heartassessment';


// other
const String plansmain = '/plansmain';
const String plansedit = '/plansedit';
const String mrkisukari = '/mrkisukari';
const String doctorsrecom = '/doctorsrecom';
const String doctorsrecomcongrats = '/doctorsrecomcongrats';
const String recomreports = '/recomreports';
const String consultation = '/consultation';
const String consultationdate = '/consultationdate';
const String consultationcongrats = '/consultationcongrats';
const String myconsultations = '/myconsultations';

// community
const String postcontent = '/postcontent';
const String communitymessages = '/communitymessages';
const String communitychat = '/communitychat';
const String communitychatinfo = '/communitychatinfo';

// learn
const String articlepage = 'articlepage/';
const String readarticle = 'readarticle/';







class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splashScreen: (context) => const SplashScreen(),
      languageScreen: (context) => const LanguageScreen(),
      introPage: (context) => const IntroPage(),
      // sign in
      login: (context) => const LogIn(),
      signup: (context) => const SignUp(),
      otpscreen: (context) => const OTPScreen(),
      // introduction
      firstintrodialog: (context) => const FirstIntroDialog(),
      secondintrodialog: (context) => const SecondScreenTypes(),
      thirdintrodialog: (context) => const ThirdDiabeticmedications(),
      fourthintrodialog: (context) => const FourthOtherdiseases(),
      resultsintrodialog: (context) => const IntroResults(),
      //main 
      mainentrypoint: (context) => const MainEntryPoint(),
      customizereport: (context) => const CustomizeReport(),
      homenotifications: (context) => const HomeNotifications(),
      subscriptionscreen: (context) => const Subscriptionscreen(),
      paymentoptions: (context) => const PaymentOptions(),
      fastingmainscreen: (context) => const FastingMainScreen(),
      mainprofilescreen: (context) => const AppProfile(),
      profiledetailsset: (context) => const ProfileHeightPicker(),
      appsettings: (context) => const AppSettings(),
      mrkisukari: (context) => const MrKisukariScreen(),
      doctorsrecom: (context) => const DoctorsRecommendations(),
      doctorsrecomcongrats: (context) => const DoctorsRecommendationsCongrats(),
      recomreports: (context) => const RecommendationReports(),
      consultation: (context) => const OnlineConsultation(),
      consultationdate: (context) => const ConsultationDate(),
      consultationcongrats: (context) => const ConsultationCongrats(),
      myconsultations: (context) => const MyConsultations(),
      // Risk assessment
      riskassessment: (context) => const RiskAssessment(),
      sugarassessment: (context) => const SugarAssessmentMain(),
      woundstest: (context) => const WoundAssessmentMain(),
      mentalassessment: (context) => const MentalAssessmentMain(),
      heartassessment: (context) => const HeartAssessmentMain(),
      // plans & goals
      plansmain: (context) => const PlansMain(),
      plansedit: (context) => const PlansEdit(),
      // community
      postcontent: (context) => const PostContent(),
      communitymessages: (context) => const CommunityMessages(),
      communitychat: (context) => const CommunityChatScreen(),
      communitychatinfo: (context) => const ChatInfo(),
      // learn
      articlepage: (context) => const ArticlePage(),
      readarticle: (context) => const ReadArticle(),
    };
  }
}
