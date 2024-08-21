import 'package:flutter/material.dart';


class SubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Plan"),
      ),
      body: ListView(
        children: [
          _buildPlanOption("Free", 10, 10, 0.0),
          _buildPlanOption("4.78", 50, 50, 4.78),
          _buildPlanOption("0.99", 10, 10, 0.99),
          _buildPlanOption("1.99", 20, 20, 1.99),
          _buildPlanOption("2.43", 25, 25, 2.43),
        ],
      ),
    );
  }

  Widget _buildPlanOption(String title, int reminders, int cards, double price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text("Reminder: $reminders\nCard: $cards"),
          trailing: price == 0.0
              ? Text("Free")
              : Text("\$$price", style: TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}
