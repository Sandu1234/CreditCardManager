import 'package:flutter/material.dart';
import 'package:credit_card_manager/screens/background.dart'; // Import GradientBackground

class AddCreditCardPage extends StatelessWidget {
  const AddCreditCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent, // Use GradientBackground
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                // Header
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context); // Navigate back
                        },
                        child:
                            const Icon(Icons.arrow_back, color: Colors.white),
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
                const SizedBox(height: 16),
                // Credit Card Display
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF270046), Color(0xFF270046)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "RACHEL SMITH",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        "****  ****  ****  1289",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "09/25",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Image(
                            image: AssetImage(
                                "assets/images/commercial_bank.png"), // Replace with your asset
                            width: 40,
                            height: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Form Fields
                Expanded(
                  child: ListView(
                    children: [
                      _buildLabel("CARD NUMBER"),
                      const SizedBox(height: 8),
                      _buildInputField(hintText: "5282 3456 7890 1289"),
                      const SizedBox(height: 16),
                      _buildLabel("NAME OF CARD"),
                      const SizedBox(height: 8),
                      _buildInputField(hintText: "Rachel Smith"),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildLabel("EXPIRY DATE"),
                                const SizedBox(height: 8),
                                _buildInputField(hintText: "09/25"),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildLabel("CVV"),
                                const SizedBox(height: 8),
                                _buildInputField(hintText: "***"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Save Info Button
                ElevatedButton(
                  onPressed: () {
                    // Add save functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF270046),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "SAVE INFO",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({required String hintText}) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white54),
        filled: true,
        fillColor: const Color(0xFF270046),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildLabel(String labelText) {
    return Text(
      labelText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        letterSpacing: 1.0,
      ),
    );
  }
}
