import 'package:flutter/material.dart';

class ClinicCard extends StatelessWidget {
  const ClinicCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 15, 15, 15),
      height: 190,
      width: width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            Colors.white70,
            Colors.white,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Clinic Name',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color.fromARGB(255, 234, 234, 234),
                    ),
                    child: const Text('1.2km'),
                  ),
                ],
              ),
              Text(
                'Dr. Doctor Name',
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black87,
                      fontSize: 18,
                    ),
              ),
              Text(
                'General',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black54,
                    ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.star_rounded,
                color: Colors.amberAccent,
              ),
              Text(
                '4.5',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
              ),
              Spacer(),
              Text(
                '14 Reviews',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Book Appointment'),
            ),
          )
        ],
      ),
    );
  }
}
