import 'package:credit_card_manager/screens/add_expences.dart';
import 'package:credit_card_manager/screens/add_new_credit_card.dart';
import 'package:credit_card_manager/screens/notifications.dart';
import 'package:credit_card_manager/screens/onboarding_page_1.dart';
import 'package:credit_card_manager/screens/onboarding_page_2.dart';
import 'package:credit_card_manager/screens/onboarding_page_3.dart';
import 'package:credit_card_manager/screens/onboarding_page_4.dart';
import 'package:credit_card_manager/screens/specific_bank_details.dart';
import 'package:credit_card_manager/screens/success.dart';
import 'package:flutter/material.dart';
import 'package:credit_card_manager/screens/background.dart';
import 'package:credit_card_manager/screens/home_page.dart';

void main() {
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
      initialRoute: '/AddExpenses', // Starting route
      routes: {
        '/onboarding1': (context) => GradientBackground(
              child: OnboardingPage1(),
            ),
        '/onboarding2': (context) => GradientBackground(
              child: OnboardingPage2(),
            ),
        '/onboarding3': (context) => GradientBackground(
              child: OnboardingPage3(),
            ),
        '/onboarding4': (context) => GradientBackground(
              child: OnboardingPage4(),
            ),
        '/home': (context) => GradientBackground(
              child: HomePage(),
            ),
        '/specificbankdetails': (context) => GradientBackground(
              child: const SpecificBankDetails(),
            ),
        '/notifications': (context) => GradientBackground(
              child: NotificationPage(),
            ),
        '/success': (context) => GradientBackground(
              child: SuccessPage(),
            ),
        '/AddExpenses': (context) => GradientBackground(
              child: AddExpensesPage(),
            ),
        '/addnewcreditcard': (context) => GradientBackground(
              child: AddCreditCardPage(),
            ),
      },
    );
  }
}
