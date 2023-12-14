import 'package:flutter/material.dart';

class MyBookingsPage extends StatefulWidget {
  @override
  _MyBookingsPageState createState() => _MyBookingsPageState();
}

class _MyBookingsPageState extends State<MyBookingsPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bookings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'In Progress'),
            Tab(text: 'Upcoming'),
            Tab(text: 'Past'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // In Progress Tab
          _buildTabContent('In Progress'),

          // Upcoming Tab
          _buildTabContent('Upcoming'),

          // Past Tab
          _buildTabContent('Past'),
        ],
      ),
    );
  }

  Widget _buildTabContent(String tabTitle) {
    return Center(
      child: Text(
        'Tab Content: $tabTitle',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: MyBookingsPage(),
    ),
  );
}





