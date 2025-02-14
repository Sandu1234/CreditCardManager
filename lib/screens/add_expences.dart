import 'package:flutter/material.dart';
import 'package:credit_card_manager/screens/background.dart'; // Import GradientBackground

class AddExpensesPage extends StatelessWidget {
  const AddExpensesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent, // Transparent to show gradient
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
                      const Row(
                        children: [
                          Icon(Icons.add, color: Colors.white),
                          SizedBox(width: 16),
                          Icon(Icons.notifications, color: Colors.white),
                          SizedBox(width: 16),
                          Icon(Icons.search, color: Colors.white),
                          SizedBox(width: 16),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/images/user.png"), // Replace with your asset
                            radius: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Title
                const Text(
                  "ADD EXPENSES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                const SizedBox(height: 24),
                // Expense Amount Display
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  decoration: BoxDecoration(
                    color: const Color(0xFF270046), // Purple background
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    "\$ 0",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 24),
                // Input Fields
                Expanded(
                  child: ListView(
                    children: [
                      _buildLabel("PAYMENT"),
                      const SizedBox(height: 8),
                      _buildInputField(hintText: "Enter payment amount"),
                      const SizedBox(height: 16),
                      _buildLabel("BANK"),
                      const SizedBox(height: 8),
                      _buildDropdownField(),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildLabel("DATE"),
                                const SizedBox(height: 8),
                                _buildDateField(),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildLabel("TIME"),
                                const SizedBox(height: 8),
                                _buildTimeField(),
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

  Widget _buildDropdownField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF270046),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButton<String>(
        dropdownColor: const Color(0xFF270046),
        icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
        underline: const SizedBox(),
        style: const TextStyle(color: Colors.white),
        items: const [
          DropdownMenuItem(
            value: "Rachel Smith",
            child: Text("Rachel Smith"),
          ),
          DropdownMenuItem(
            value: "Other Bank",
            child: Text("Other Bank"),
          ),
        ],
        onChanged: (value) {
          // Handle change
        },
      ),
    );
  }

  Widget _buildDateField() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF270046),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Icon(Icons.calendar_today, color: Colors.white),
    );
  }

  Widget _buildTimeField() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF270046),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Icon(Icons.access_time, color: Colors.white),
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
