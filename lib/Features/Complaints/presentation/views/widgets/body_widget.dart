// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Body:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 8),
          Text(
            "We are excited to invite you to our upcoming Online "
            "Education Meeting scheduled for Saturday, 19th October 2024. "
            "This interactive session is designed to help you enhance "
            "your skills and knowledge, with a focus on practical learning experiences.",
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Icon(Icons.timer, color: Colors.red),
              SizedBox(width: 8),
              Text("Start: 10:00 AM"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.timer, color: Colors.green),
              SizedBox(width: 8),
              Text("End: 1:30 PM"),
            ],
          ),
          SizedBox(height: 16),
          Text(
            "During the meeting we will cover a range of valuable topics, including:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "- Effective Time Management for Students: Learn how to prioritize tasks and manage your workload efficiently.",
          ),
          SizedBox(height: 16),
          Container(
            height: 200,
            color: Colors.grey[300],
            child: Center(
              child: Icon(
                Icons.image,
                size: 100,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "15/10/2024",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
