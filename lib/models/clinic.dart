class Clinic {
  const Clinic({
    required this.id,
    required this.name,
    required this.rating,
    required this.doctors,
    required this.phNo,
  });
  final String id;
  final String name;
  final double rating;
  final List<Doctor> doctors;
  final String phNo;
}

class Doctor {
  const Doctor({
    required this.id,
    required this.name,
    required this.profession,
  });
  final String id;
  final String name;
  final String profession;
}
