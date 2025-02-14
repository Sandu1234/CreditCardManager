import 'package:credit_card_manager/screens/add_expences.dart';
import 'package:credit_card_manager/screens/add_new_credit_card.dart';
import 'package:credit_card_manager/screens/login.dart';
import 'package:credit_card_manager/screens/notifications.dart';
import 'package:credit_card_manager/screens/onboarding_page_1.dart';
import 'package:credit_card_manager/screens/onboarding_page_2.dart';
import 'package:credit_card_manager/screens/onboarding_page_3.dart';
import 'package:credit_card_manager/screens/onboarding_page_4.dart';
import 'package:credit_card_manager/screens/signup.dart';
import 'package:credit_card_manager/screens/specific_bank_details.dart';
import 'package:credit_card_manager/screens/success.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:credit_card_manager/screens/background.dart';
import 'package:credit_card_manager/screens/home_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD9o-Qy3sPa_JAM_WaUQ2EzGIhKtn-ujgY",
            appId: "1:152369755703:web:81c8c0efa26ce94d0a31b2",
            messagingSenderId: "152369755703",
            projectId: "creditcardmanager-61acf"));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Credit Card Manager',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/signup', // Starting route
      routes: {
        '/onboarding1': (context) => const GradientBackground(
              child: OnboardingPage1(),
            ),
        '/onboarding2': (context) => const GradientBackground(
              child: OnboardingPage2(),
            ),
        '/onboarding3': (context) => const GradientBackground(
              child: OnboardingPage3(),
            ),
        '/onboarding4': (context) => const GradientBackground(
              child: OnboardingPage4(),
            ),
        '/home': (context) => const GradientBackground(
              child: HomePage(),
            ),
        '/specificbankdetails': (context) => const GradientBackground(
              child: SpecificBankDetails(),
            ),
        '/notifications': (context) => const GradientBackground(
              child: NotificationPage(),
            ),
        '/success': (context) => const GradientBackground(
              child: SuccessPage(),
            ),
        '/AddExpenses': (context) => const GradientBackground(
              child: AddExpensesPage(),
            ),
        '/addnewcreditcard': (context) => const GradientBackground(
              child: AddCreditCardPage(),
            ),
        '/login': (context) => const GradientBackground(child: LoginPage()),
        '/signup': (context) => const GradientBackground(child: SignUpPage())
      },
    );
  }
}
