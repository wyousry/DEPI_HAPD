import 'package:depi_hapd/Features/Tasks/presentation/views/widgets/time_and_places_view_body.dart';
import 'package:flutter/material.dart';

class TimeAndPlacesView extends StatelessWidget {
  const TimeAndPlacesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: TimeAndPlacesViewBody(),
      ),
    );
  }
}
