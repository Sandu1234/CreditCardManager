import 'package:flutter/material.dart';
import 'package:credit_card_manager/screens/background.dart'; // Import GradientBackground

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Add a Row at the top for the Skip button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Navigate to the home page
                    Navigator.pushNamed(context, '/home');
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Row(
                      children: [
                        Text('Skip'),
                        SizedBox(width: 4),
                        Icon(Icons.arrow_forward,
                            size: 18, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Spacer(),
            Center(
              child: Image.asset(
                'assets/images/credit-card-two.png', // Replace with your actual image path
                height: 200,
              ),
            ),
            const SizedBox(height: 35),
            const Text(
              'Analyze, Save, and Succeed',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                decoration: TextDecoration.none, // Prevent underline
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Get detailed insights on your payments, interest, and savings. '
              'Make informed decisions to achieve your financial goals.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                decoration: TextDecoration.none, // Prevent underline
              ),
            ),
            const SizedBox(height: 38),

            // Indicator Dots
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 6, backgroundColor: Colors.white),
                SizedBox(width: 8),
                CircleAvatar(radius: 6, backgroundColor: Colors.white),
                SizedBox(width: 8),
                CircleAvatar(radius: 6, backgroundColor: Colors.white),
                SizedBox(width: 8),
                CircleAvatar(radius: 6, backgroundColor: Colors.white38),
              ],
            ),
            const Spacer(),

            // Next Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/onboarding4');
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
