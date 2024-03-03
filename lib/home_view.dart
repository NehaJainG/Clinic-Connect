import 'package:flutter/material.dart';
import 'package:med_gen/appointments/appointment_card.dart';
import 'package:med_gen/appointments/appointments.dart';
import 'package:med_gen/clinics/clinic_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _searchController = TextEditingController();

  void viewAppointments() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Appointments(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).colorScheme.inversePrimary,
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Clinics',
                suffixIcon: const Icon(Icons.keyboard_voice),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                contentPadding: const EdgeInsets.all(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              children: [
                Text(
                  'Upcoming Appointment',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: viewAppointments,
                  child: const Text(
                    'See all',
                  ),
                )
              ],
            ),
          ),
          AppointmentCard(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'NearBy Clinics',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
          ClinicCard(),
        ],
      ),
    );
  }
}
