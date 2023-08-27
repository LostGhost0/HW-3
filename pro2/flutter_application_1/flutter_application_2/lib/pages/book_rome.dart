import 'package:flutter/material.dart';

import 'package:flutter_application_2/pages/nav_buttom.dart';

import 'package:flutter_application_2/services/subapase.dart';

import 'package:flutter_application_2/wedgit/text_f.dart';

class BockRoom extends StatefulWidget {
  const BockRoom({super.key});

  @override
  State<BockRoom> createState() => _BockRoomState();
}

class _BockRoomState extends State<BockRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF476bfe),
        title: const Text("Book Room"),
      ),
      body: FutureBuilder(
        future: SupabaseService().getHotel(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final hotelList = snapshot.data ?? [];
            for (final hotel in hotelList) {
              return Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "${hotel.name}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 35),
                            child: Text(
                              "13 Nov - 18 Nov , 5 nights",
                              style: TextStyle(fontWeight: FontWeight.w100),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              "1 Room, 2 Adults",
                              style: TextStyle(fontWeight: FontWeight.w100),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(0), // Image border
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.network(
                          "${hotel.hotelImage}",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 50,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "\$${hotel.price}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "x",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "5",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "night",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "\$${hotel.price}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const TextFeldInput(
                        name: "code",
                        iconname: Icons.code,
                        namelebel: "code",
                        size: 200,
                        hight: 30,
                      ),
                      TextButton(
                          onPressed: () {}, child: const Text("Add coupon"))
                    ],
                  ),
                  const Divider(
                    height: 50,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Total (USD)",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "\$${hotel.price}",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) =>
                                  BottomNavigationBarExample()),
                          (Route<dynamic> route) => false);
                    },
                    child: Text("Book Room"),
                  )
                ],
              );
            }
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
