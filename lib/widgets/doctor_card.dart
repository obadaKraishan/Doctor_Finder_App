import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../models/doctor.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;

  DoctorCard({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[200],
          child: ClipOval(
            child: Image.network(
              doctor.imageUrl,
              fit: BoxFit.cover,
              width: 50,
              height: 50,
              errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                return Image.asset('assets/doctor.png', fit: BoxFit.cover, width: 50, height: 50);
              },
            ),
          ),
        ),
        title: Text(doctor.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(doctor.specialty),
            Row(
              children: [
                RatingBarIndicator(
                  rating: doctor.rating,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 20.0,
                  direction: Axis.horizontal,
                ),
                SizedBox(width: 8),
                Text('(${doctor.reviewCount} reviews)'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
