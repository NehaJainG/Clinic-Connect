class Appointment {
  const Appointment({
    required this.id,
    required this.patientName,
    required this.userName,
    required this.date,
    required this.visitDate,
    required this.clinicId,
    required this.doctorId,
  });

  final String id;
  final String patientName;
  final DateTime date; //date and time of when the appointment booked.
  final DateTime visitDate; // date and time of appointment scheduled .
  final String userName;
  final String clinicId;
  final String doctorId;
}
