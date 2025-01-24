import 'package:flutter/material.dart';
import 'package:credit_card_manager/screens/background.dart'; // Import GradientBackground

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent, // Use GradientBackground
        body: SafeArea(
          child: Column(
            children: [
              // Header
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // Go back
                      },
                      child: const Icon(Icons.arrow_back, color: Colors.white),
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
              const SizedBox(height: 16),
              // Title
              const Text(
                "NOTIFICATIONS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Notification List
              Expanded(
                child: ListView.builder(
                  itemCount: 6, // Number of notifications
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.2)),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            "assets/images/commercial_bank.png", // Replace with your bank logo asset
                            width: 40,
                            height: 40,
                          ),
                          title: const Text(
                            "YOUR PAYMENT OF LKR 15,000 IS DUE TODAY.",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          subtitle: const Text(
                            "5.30 PM",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                          trailing: ElevatedButton(
                            onPressed: () {
                              // Add functionality for Pay Now
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF270046),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              "PAY NOW",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF270046),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Colors.white),
              label: 'Add Payment',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.purpleAccent,
          unselectedItemColor: Colors.white70,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
