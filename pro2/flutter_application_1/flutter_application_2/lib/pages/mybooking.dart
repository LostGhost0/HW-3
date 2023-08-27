import 'package:flutter/material.dart';
import 'package:flutter_application_2/services/subapase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MyBooking extends StatefulWidget {
  const MyBooking({Key? key});

  @override
  State<MyBooking> createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> {
  final future = Supabase.instance.client.from('hotel').select();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Booking'),
      ),
      body: FutureBuilder(
        future: SupabaseService().getHotel(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final list = snapshot.data ?? [];

            return GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 200,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              children: [
                for (final hotel in list) ...[
                  Card(
                    child: Column(
                      children: [
                        Image.network(
                          hotel.hotelImage ?? "",
                          width: 120,
                          height: 120,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(hotel.name ?? ""),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(hotel.description ?? ""),
                        ),
                        Text("${hotel.price}\$")
                      ],
                    ),
                  ),
                ]
              ],
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
