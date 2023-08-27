import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/test_page.dart';
import 'package:flutter_application_2/services/subapase.dart';
import 'package:flutter_application_2/wedgit/button.dart';
import 'package:flutter_application_2/wedgit/c_image.dart';
import 'package:flutter_application_2/wedgit/image_coon.dart';
import 'package:flutter_application_2/wedgit/text_f.dart';
import 'package:flutter_application_2/wedgit/text_sp_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff476bfe),
      body: FutureBuilder(
        future: SupabaseService().getHotel(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final hotelList = snapshot.data ?? [];

            for (final hotel in hotelList) {
              return Container(
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: 900,
                          height: 900,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              const TextFeldInput(
                                size: 400,
                                name: "Location",
                                iconname: Icons.map_outlined,
                                namelebel: "City",
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                children: [
                                  TextFeldInput(
                                    size: 230,
                                    namelebel: "20 - 25 May 2023",
                                    name: "Date",
                                    iconname: Icons.date_range,
                                  ),
                                  TextFeldInput(
                                    size: 150,
                                    namelebel: "Guest",
                                    name: "3 person",
                                    iconname: Icons.person_add_sharp,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              BlueButton(
                                name: "Search",
                                sizeH: 40,
                                sizeW: 300,
                                onpresed: () {},
                              ),
                              const TextSpaceButton(
                                name: "Popular cities",
                              ),
                              InkWell(
                                onTap: () {},
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Circularimage(
                                        name: "${hotel.name}",
                                        imagename: "${hotel.hotelImage}",
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Circularimage(
                                        name: "${hotel.name}",
                                        imagename: "${hotel.hotelImage}",
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Circularimage(
                                        name: "${hotel.name}",
                                        imagename: "${hotel.hotelImage}",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const TextSpaceButton(
                                name: "Favorite place to holiday",
                              ),
                              const SizedBox(
                                height: 1,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        child: ImageContainer(
                                          image: "${hotel.hotelImage}",
                                          name: "${hotel.name}",
                                          describtion: "${hotel.description}",
                                          price: "${hotel.price}",
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ResortPage(),
                                              ));
                                        },
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      ImageContainer(
                                        image: "${hotel.hotelImage}",
                                        name: "${hotel.name}",
                                        describtion: "${hotel.description}",
                                        price: "${hotel.price}",
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      ImageContainer(
                                        image: "${hotel.hotelImage}",
                                        name: "${hotel.name}",
                                        describtion: "${hotel.description}",
                                        price: "${hotel.price}",
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      ImageContainer(
                                        image: "${hotel.hotelImage}",
                                        name: "${hotel.name}",
                                        describtion: "${hotel.description}",
                                        price: "${hotel.price}",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
