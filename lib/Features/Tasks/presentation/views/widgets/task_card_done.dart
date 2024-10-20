import 'package:depi_hapd/constant.dart';
import 'package:flutter/material.dart';

class TaskCardDone extends StatefulWidget {
  final String title;
  final String assetImage;

  const TaskCardDone({
    required this.title,
    required this.assetImage,
  });

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCardDone> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    widget.assetImage,
                    width: 50,
                    height: 50,
                  ),
                  const VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                    width: 10,
                  ),
                ],
              ),
              title: Center(
                child: Text(widget.title,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.normal)),
              ),
              trailing: const Icon(
                Icons.done_all_outlined,
                color: kGreenAccentColor,
              )),
        ],
      ),
    );
  }
}
