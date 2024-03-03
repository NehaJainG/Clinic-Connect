import 'package:flutter/material.dart';

class UpcomingAppointment extends StatelessWidget {
  const UpcomingAppointment({super.key});

  Widget highlightedText(String text, IconData icon, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background.withOpacity(0.5),
        backgroundBlendMode: BlendMode.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }

  Widget rotatedContainer(
      double radian, double x, double y, double height, double width) {
    return Container(
      height: height,
      width: width,
      transform: Matrix4.translationValues(x, y, 0.0)
        ..rotateZ(radian * 3.1415927 / 180),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: 180,
      width: width - 50,
      child: Stack(
        children: [
          Container(
            height: 180,
            width: width - 50,
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).primaryColor.withOpacity(0.6),
                  Theme.of(context).primaryColor,
                ],
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      child: Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Doctor Name',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                        Text(
                          'General | Clinic Name',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    highlightedText(
                      'Mar 2, 2024',
                      Icons.calendar_month,
                      context,
                    ),
                    const SizedBox(width: 15),
                    highlightedText(
                      '2:00 AM',
                      Icons.access_time_rounded,
                      context,
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              bottom: -30,
              right: 0,
              child: rotatedContainer(20, 50, -10, 100, 120)),
          Positioned(
            bottom: -20,
            right: 0,
            child: rotatedContainer(24, 50, -25, 90, 120),
          ),
          Positioned(
            bottom: -20,
            right: 0,
            child: rotatedContainer(36, 85, -25, 90, 120),
          ),
        ],
      ),
    );
  }
}
