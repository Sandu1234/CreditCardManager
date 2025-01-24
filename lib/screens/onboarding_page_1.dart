import 'package:flutter/material.dart';
import 'package:credit_card_manager/screens/background.dart'; // Import GradientBackground

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            Center(
              child: Image.asset(
                'assets/images/credit.png', // Replace with your actual image path
                height: 200,
              ),
            ),
            const SizedBox(height: 35),
            const Text(
              'Manage All Your Credit Cards in One Place',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                decoration: TextDecoration.none, // Ensure no underline
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Simplify your financial life by organizing all your credit cards in one easy-to-use app. '
              'Track balances, due dates, and payments effortlessly.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                decoration: TextDecoration.none, // Ensure no underline
              ),
            ),

            const SizedBox(height: 38),

            // Indicator Dots
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 6, backgroundColor: Colors.white),
                SizedBox(width: 8),
                CircleAvatar(radius: 6, backgroundColor: Colors.white38),
                SizedBox(width: 8),
                CircleAvatar(radius: 6, backgroundColor: Colors.white38),
                SizedBox(width: 8),
                CircleAvatar(radius: 6, backgroundColor: Colors.white38),
              ],
            ),
            const Spacer(),

            // Optional button section
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/onboarding2');
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                child: Text('Next', style: TextStyle(fontSize: 16)),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
