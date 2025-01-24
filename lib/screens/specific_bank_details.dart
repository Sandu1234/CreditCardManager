import 'package:flutter/material.dart';
import 'package:credit_card_manager/screens/background.dart'; // Import GradientBackground

class SpecificBankDetails extends StatelessWidget {
  const SpecificBankDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent, // Use GradientBackground
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.notifications_outlined, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white),
            ),
            const CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/user.png'), // Profile image
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Summary Card
                _buildSummaryCard(),
                const SizedBox(height: 24),

                // Total Payable Section
                _buildTotalPayableSection(),
                const SizedBox(height: 24),

                // Transactions Section
                _buildTransactionsSection(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  // Summary Card
  Widget _buildSummaryCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF270046), // Purple card color
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/commercial_bank.png', // Replace with actual bank logo
                height: 40,
              ),
              const SizedBox(width: 16),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TOTAL PAYMENT DUE',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '\$5,750.20',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.purple.shade900,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              '10%',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  // Total Payable Section
  Widget _buildTotalPayableSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Total Payable and Due Date
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'TOTAL PAYABLE',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            Text(
              'DUE DATE',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              '\$5,750.20',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              '09/25',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),

        // Sliders
        _buildSlider(
          label: 'AMOUNT DUE BEFORE THE DEADLINE',
          value: 500,
          maxValue: 1000,
          activeColor: Colors.purpleAccent,
        ),
        const SizedBox(height: 16),
        _buildSlider(
          label: 'AMOUNT DUE AFTER THE DEADLINE',
          value: 750,
          maxValue: 1000,
          activeColor: Colors.pinkAccent,
        ),
        const SizedBox(height: 24),

        // Pay Now Button
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
            ),
            onPressed: () {
              // Add payment logic here
            },
            child: const Text(
              'PAY NOW',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSlider({
    required String label,
    required double value,
    required double maxValue,
    required Color activeColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.white70, fontSize: 14),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$${value.toInt()}',
              style: TextStyle(color: activeColor, fontSize: 14),
            ),
            Text(
              '\$${maxValue.toInt()}',
              style: const TextStyle(color: Colors.white38, fontSize: 14),
            ),
          ],
        ),
        Slider(
          value: value,
          max: maxValue,
          onChanged: (double newValue) {},
          activeColor: activeColor,
          inactiveColor: Colors.white38,
        ),
      ],
    );
  }

  // Transactions Section
  Widget _buildTransactionsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Transactions Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'TRANSACTIONS',
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            IconButton(
              onPressed: () {
                // Add filter logic
              },
              icon: const Icon(Icons.filter_list, color: Colors.white70),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Transactions List
        _buildTransactionItem('Jony Wilson', '\$438', 'Today, 12:30 PM'),
        _buildTransactionItem('Jony Wilson', '\$438', 'Today, 12:30 PM'),
        _buildTransactionItem('Jony Wilson', '\$438', 'Today, 12:30 PM'),
      ],
    );
  }

  Widget _buildTransactionItem(String name, String amount, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.pink,
          child: Text(
            name.substring(0, 2), // Initials
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        subtitle: Text(
          time,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
        trailing: Text(
          amount,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }

  // Bottom Navigation Bar
  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF270046),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Add Payment',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
