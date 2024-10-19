import 'package:flutter/material.dart';
import 'sub_task_card.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({
    super.key,
    required this.title,
    required this.assetImage,
    this.subTasks,
    required this.onTap,
    this.trailing,
    this.textStyle,
  });

  final String title;
  final String assetImage;
  final List<SubTaskCard>? subTasks;
  final VoidCallback onTap;
  final bool? trailing;
  final TextStyle? textStyle;

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 7,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ListTile(
            onTap: widget.onTap,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  widget.assetImage,
                  width: 60,
                  height: 60,
                ),
                const SizedBox(width: 15),
                const VerticalDivider(
                  color: Colors.black54,
                  thickness: 1,
                  width: 9,
                  indent: 5,
                  endIndent: 5,
                ),
              ],
            ),
            title: Text(
              widget.title,
              style: widget.textStyle,
            ),
            trailing: widget.trailing == true
                ? IconButton(
                    icon: Icon(isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down),
                    onPressed: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                  )
                : null,
          ),
          if (isExpanded && widget.subTasks != null)
            Column(
              children: widget.subTasks!,
            ),
        ],
      ),
    );
  }
}
