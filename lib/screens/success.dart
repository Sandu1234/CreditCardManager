import 'package:flutter/material.dart';
import 'package:credit_card_manager/screens/background.dart'; // Import GradientBackground

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent, // Use GradientBackground
        body: SafeArea(
          child: Stack(
            children: [
              // Header Row with Icons
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.add, color: Colors.white),
                        const SizedBox(width: 16),
                        const Icon(Icons.notifications, color: Colors.white),
                        const SizedBox(width: 16),
                        const Icon(Icons.search, color: Colors.white),
                        const SizedBox(width: 16),
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/user.png"), // Replace with your asset
                          radius: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Success Content
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF270046), // Card color
                    borderRadius: BorderRadius.circular(16),
                    border:
                        Border.all(color: Colors.deepPurpleAccent, width: 2),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Check Icon
                      Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          color: Color(0xFF6A4AAC), // Circle color
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Success Text
                      const Text(
                        "SUCCESSFULLY\nADDED THE PAYMENTS!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.0,
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Close Button
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context); // Close the page
                          },
                          child: const Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
