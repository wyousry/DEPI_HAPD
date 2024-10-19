// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors


import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/constant.dart';
import 'package:flutter/material.dart';

class ComplaintCard extends StatelessWidget {
  final String from;
  final String subject;
  final String date;
  final bool isUnread;
  final VoidCallback onTap;

  ComplaintCard({
    required this.from,
    required this.subject,
    required this.date,
    this.isUnread = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomShadow(
        borderRadius: BorderRadius.circular(16),
        color: kGrey.shade200,
        padding: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
        margin: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From: $from',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Subject: $subject',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                if (isUnread)
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: 17,
                  ),
              ],
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                date,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
