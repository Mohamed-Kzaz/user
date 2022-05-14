import 'package:driver/create_account.dart';
import 'package:driver/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isviewed;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var onBoardingScreen = OnBoardingScreen;
    return MaterialApp(
       localizationsDelegates: const [ //عشان تخلي البرنامج عربي يبدا من اليمين للشمال
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      //ضع الصفحة اللي هتفتح بعد الاونبورد مكان الكريت
      home: isviewed != 0 ? const OnBoardingScreen() : const CreateAccount(),
    );
  }
}