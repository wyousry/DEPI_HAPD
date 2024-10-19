import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Name:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "Muhammed Abdullah",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Phone:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "010255868956",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Email:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                " m.abdullah@gmail.com",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Track:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                " Mobile App Development",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Group:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "CAI1_SWD4_S9d",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
