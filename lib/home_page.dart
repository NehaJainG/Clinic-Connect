import 'package:flutter/material.dart';
import 'package:med_gen/clinics/search_clinics.dart';
import 'package:med_gen/defaults/icon.dart';
import 'package:med_gen/home_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;

  Widget get displayScreen {
    if (_selectedPage == 1) {
      return SearchClinicScreen();
    }
    if (_selectedPage == 2) {
      return Padding(
        padding: EdgeInsets.all(8),
        child: Text('Queue'),
      );
    }
    return HomeView();
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 234, 234),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 234, 234),
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
      body: displayScreen,
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
            label: 'Search Clinic',
            icon: Icon(Icons.search_rounded),
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
