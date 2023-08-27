import 'package:flutter_application_2/models/hotel.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final client = Supabase.instance.client;
  Future<List<Hotel>?> getHotel() async {
    final supabase = Supabase.instance.client;
    final rawHotel = await supabase
        .from('hotel')
        .select("city, hotel_image, price,adresses,description,name");
    final List<Hotel> hotels = [];
    for (final hotel in rawHotel) {
      hotels.add(Hotel.fromJson(hotel));
    }
    return hotels;
  }
}
