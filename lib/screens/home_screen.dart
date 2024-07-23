import 'package:flutter/material.dart';
import '../models/doctor.dart';
import '../widgets/doctor_card.dart';
import '../widgets/top_tabs.dart';
import '../widgets/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Cardiology';

  final Map<String, List<Doctor>> categorizedDoctors = {
    'Cardiology': [
      Doctor(
        name: 'Caroline Wong',
        rating: 4.5,
        reviewCount: 13,
        specialty: 'Cardiologist, Chief of Intervention Cardiology Center',
        imageUrl: 'assets/doctor.png',
      ),
      Doctor(
        name: 'Patrick Gonzalez',
        rating: 4.0,
        reviewCount: 9,
        specialty: 'Cardiologist, ABIM Board Certified in Internal Medicine OH, PA State',
        imageUrl: 'assets/doctor.png',
      ),
      Doctor(
        name: 'Chester Johnston',
        rating: 4.0,
        reviewCount: 22,
        specialty: 'Cardiologist, ABIM-Internal Medicine, NBE-Echocardiography',
        imageUrl: 'assets/doctor.png',
      ),
      Doctor(
        name: 'Stella Simpson',
        rating: 4.2,
        reviewCount: 19,
        specialty: 'Cardiologist, Chief of Cardiology Department',
        imageUrl: 'assets/doctor.png',
      ),
      Doctor(
        name: 'James Smith',
        rating: 3.9,
        reviewCount: 14,
        specialty: 'Cardiologist, ABIM-Internal Medicine',
        imageUrl: 'assets/doctor.png',
      ),
    ],
    'Dentistry': [
      // Add dentist doctors here

    ],
    'Vaccination': [
      // Add vaccination doctors here
    ],
    'General': [
      // Add general doctors here
    ],
    'Ophthalmology': [
      // Add ophthalmology doctors here
    ],
    'ENT': [
      // Add ENT doctors here
    ],
    'Orthopedics': [
      // Add orthopedics doctors here
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text('Hi, John', style: TextStyle(fontSize: 24)),
            SizedBox(height: 8),
            Text('Doctors for you', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            TopTabs(
              onCategorySelected: (category) {
                setState(() {
                  selectedCategory = category;
                });
              },
            ),
            SizedBox(height: 0),
            Expanded(
              child: ListView.builder(
                itemCount: categorizedDoctors[selectedCategory]?.length ?? 0,
                itemBuilder: (context, index) {
                  return DoctorCard(doctor: categorizedDoctors[selectedCategory]![index]);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
