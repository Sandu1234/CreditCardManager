import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A148C), // Background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'TOTAL PAYMENT DUE',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage(
                'assets/images/user.png'), // Replace with profile image path
          ),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Total Payment Card
              _buildTotalPaymentCard(),
              const SizedBox(height: 16),

              // Horizontal Bank Cards
              _buildBankCardsSection(),

              const SizedBox(height: 16),

              // Detailed Summary Section
              const Text(
                'DETAILED SUMMARY BY BANK',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              _buildDetailedSummaryCards(),

              const SizedBox(height: 24),

              // Transactions Section
              _buildTransactionsSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  // Total Payment Card
  Widget _buildTotalPaymentCard() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF5E35B1), // Purple card color
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage:
                    AssetImage('assets/images/user.png'), // Profile picture
              ),
              SizedBox(width: 16),
              Column(
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
          Icon(
            Icons.notifications_outlined,
            color: Colors.white70,
            size: 28,
          ),
        ],
      ),
    );
  }

  // Horizontal Bank Cards
  Widget _buildBankCardsSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildBankCard(
              'Commercial Bank', 'assets/images/commercial_bank.png', '\$5000'),
          const SizedBox(width: 16),
          _buildBankCard(
              'Peoples Bank', 'assets/images/peoples_bank.png', '\$5000'),
          const SizedBox(width: 16),
          _buildBankCard(
              'Commercial Bank', 'assets/images/commercial_bank.png', '\$5000'),
        ],
      ),
    );
  }

  Widget _buildBankCard(String bankName, String logoPath, String amount) {
    return Container(
      width: 200, // Fixed width to avoid overflow
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF512DA8), // Card color
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(logoPath, width: 40), // Bank logo
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  bankName,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            amount,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  // Detailed Summary Cards
  Widget _buildDetailedSummaryCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildSummaryCard('Commercial Bank', '\$5,750.20', '09/25'),
          const SizedBox(width: 16),
          _buildSummaryCard('Peoples Bank', '\$4,000.00', '09/30'),
          const SizedBox(width: 16),
          _buildSummaryCard('Commercial Bank', '\$5,750.20', '09/25'),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(String bankName, String amount, String dueDate) {
    return Container(
      width: 180, // Fixed width to avoid overflow
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF673AB7), Color(0xFF512DA8)], // Card gradient
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'TOTAL PAYABLE',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 8),
          Text(
            amount,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            bankName,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          const SizedBox(height: 4),
          Text(
            'Due Date: $dueDate',
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
        ],
      ),
    );
  }

  // Transactions Section
  Widget _buildTransactionsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'TRANSACTIONS',
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),
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
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  // Bottom Navigation Bar
  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF4A148C),
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
