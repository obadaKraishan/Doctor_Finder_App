import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopTabs extends StatelessWidget {
  final List<Map<String, dynamic>> tabs = [
    {'icon': FontAwesomeIcons.heartbeat, 'label': 'Cardiology'},
    {'icon': FontAwesomeIcons.tooth, 'label': 'Dentistry'},
    {'icon': FontAwesomeIcons.syringe, 'label': 'Vaccination'},
    {'icon': FontAwesomeIcons.stethoscope, 'label': 'General'},
    {'icon': FontAwesomeIcons.eye, 'label': 'Ophthalmology'},
    {'icon': FontAwesomeIcons.earListen, 'label': 'ENT'},
    {'icon': FontAwesomeIcons.bone, 'label': 'Orthopedics'},
    // Add more tabs as needed
  ];

  final Function(String) onCategorySelected;

  TopTabs({required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: tabs.map((tab) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFbbdefb),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    icon: FaIcon(tab['icon'], color: Colors.blue),
                    onPressed: () {
                      onCategorySelected(tab['label']);
                    },
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  tab['label'],
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
