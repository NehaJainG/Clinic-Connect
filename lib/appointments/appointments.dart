import 'package:flutter/material.dart';
import 'package:med_gen/appointments/appointment_card.dart';
import 'package:med_gen/models/appointment.dart';

class Appointments extends StatefulWidget {
  Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final List<Appointment> appointments = [
    Appointment(
      id: 'A1',
      patientName: 'John Doe',
      userName: 'Alice',
      date: DateTime(2024, 3, 3, 10, 0), // Example date and time
      visitDate: DateTime(2024, 3, 10, 11, 30), // Example date and time
      clinicId: 'C1',
      doctorId: 'D1',
    ),
    Appointment(
      id: 'A2',
      patientName: 'Jane Smith',
      userName: 'Alice',
      date: DateTime(2024, 3, 5, 11, 0), // Example date and time
      visitDate: DateTime(2024, 3, 12, 10, 0), // Example date and time
      clinicId: 'C2',
      doctorId: 'D2',
    ),
    Appointment(
      id: 'A3',
      patientName: 'Bob Johnson',
      userName: 'Alice',
      date: DateTime(2024, 3, 7, 14, 30), // Example date and time
      visitDate: DateTime(2024, 3, 14, 14, 0), // Example date and time
      clinicId: 'C3',
      doctorId: 'D3',
    ),
    // Add more appointments as needed
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointments'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Upcoming'),
            Tab(
              text: 'Completed',
            ),
            Tab(
              text: 'Canceled',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: appointments.length,
            itemBuilder: (ctx, index) {
              return AppointmentCard();
            },
          ),
          ListView.builder(
            itemCount: appointments.length,
            itemBuilder: (ctx, index) {
              return AppointmentCard();
            },
          ),
          ListView.builder(
            itemCount: appointments.length,
            itemBuilder: (ctx, index) {
              return AppointmentCard();
            },
          ),
        ],
      ),
    );
  }
}
