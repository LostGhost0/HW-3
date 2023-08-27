import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/hotel.dart';
import 'package:flutter_application_2/pages/book_rome.dart';

class ResortPage extends StatelessWidget {
  const ResortPage({super.key, this.hotel});
  final Hotel? hotel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'lib/assets/images/9.png', // تغيير المسار إلى مسار الصورة الخاصة بك
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "dkmdkm4kd",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Badung, Bali Indonesia',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 4),
                      Text(
                        '4.8 (131 reviews)',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Our resort offers a perfect blend of tranquility, breathtaking beauty, and impeccable service. Located along the pristine white sands and azure waters will be perfect for your holiday.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Facilities',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(children: [
                        Icon(Icons.pool),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Infinity Pool'),
                      ]),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Icon(Icons.beach_access),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Sunse view'),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Icon(Icons.fitness_center),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Gym Center'),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Icon(Icons.work),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Work station'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Review',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Adam Smith 4.8\nI recently had the pleasure of staying at Jimbaran Beach Resort, and I must say it exceeded all my expectations. I will be back soon!',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BockRoom(),
                          ));
                    },
                    child: Text("Book Room"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
