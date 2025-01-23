import 'package:credit_card_manager/screens/home_page.dart';
import 'package:credit_card_manager/screens/onboarding_page_1.dart';
import 'package:credit_card_manager/screens/onboarding_page_2.dart';
import 'package:credit_card_manager/screens/onboarding_page_3.dart';
import 'package:credit_card_manager/screens/onboarding_page_4.dart';
import 'package:credit_card_manager/screens/specific_bank_details.dart';
import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/specificbankdetails',
      routes: {
        '/onboarding1': (context) => OnboardingPage1(),
        '/onboarding2': (context) => OnboardingPage2(),
        '/onboarding3': (context) => OnboardingPage3(),
        '/onboarding4': (context) => OnboardingPage4(),
        '/home': (context) => HomePage(),
        '/specificbankdetails': (context) =>
            const SpecificBankDetails(), // Add this route
      },
    );
  }
}
