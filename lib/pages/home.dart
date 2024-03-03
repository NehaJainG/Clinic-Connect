import 'package:flutter/material.dart';
import 'package:med_gen/clinic_card.dart';
import 'package:med_gen/defaults/icon.dart';
import 'package:med_gen/pages/appointments.dart';
import 'package:med_gen/upcoming_appointment.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;
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
    // double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 234, 234),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: notification,
            onPressed: () {},
          )
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              'Neha',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
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
            UpcomingAppointment(),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedPage = value;
          });
        },
        currentIndex: _selectedPage,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Book',
            icon: Icon(Icons.sticky_note_2_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Queue',
            icon: Icon(Icons.add_to_queue),
          ),
        ],
      ),
    );
  }
}
