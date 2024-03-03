import 'package:flutter/material.dart';

class SearchClinicScreen extends StatelessWidget {
  SearchClinicScreen({super.key});

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search),
              hintText: 'Search Clinics',
              suffixIcon: Icon(Icons.keyboard_voice),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              contentPadding: EdgeInsets.all(15),
            ),
          ),
        ),
      ],
    );
  }
}
