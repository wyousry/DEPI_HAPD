import 'package:flutter/material.dart';

class AnnouncementCardListView extends StatelessWidget {
  const AnnouncementCardListView(
      {super.key, required this.announcementCardList});

  final List<Widget> announcementCardList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        
        itemCount: announcementCardList.length,
        itemBuilder: (context, index) {
          return announcementCardList[index];
        });
  }
}