import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:animate_do/animate_do.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
  var indexPage = 0;
  List<dynamic> typeGenreNft = [
    {"name": "Personal Trainer", "selected": true},
    {"name": "Workout", "selected": false},
    {"name": "Diet", "selected": false},
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final getHeight = mediaQuery.size.height;
    final getWidht = mediaQuery.size.width;
    final appbarHeight = mediaQuery.padding.top;
    final bottomPadding = mediaQuery.padding.bottom;
    return SafeArea(
      minimum: const EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FadeInUp(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Iconsax.menu,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    onTap: () {
                      // ignore: avoid_print
                      print("tap pp");
                    },
                  ),
                  const Text(
                    "9, nov 2021",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Iconsax.notification,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    onTap: () {
                      // ignore: avoid_print
                      print("tap pp");
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            "Search Trainers here!",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        // ignore: avoid_print
                        print("tap pp");
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Iconsax.menu,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    onTap: () {
                      // ignore: avoid_print
                      print("tap pp");
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              const Text(
                "Categories",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                child: Row(
                  children: [
                    for (var i = 0; i < typeGenreNft.length; i++) ...[
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: double.infinity,
                          maxHeight: double.infinity,
                        ),
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 20.0, top: 10.0, bottom: 10.0),
                        decoration: BoxDecoration(
                          color: typeGenreNft[i]["selected"]
                              ? Colors.white
                              : const Color(0xffF0F8FF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          typeGenreNft[i]["name"],
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Personal Trainers",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (var i = 0; i < 5; i++) ...[
                      const SizedBox(
                        width: 15.0,
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () {},
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image(
                                fit: BoxFit.fill,
                                width: getWidht * 0.9,
                                height: getHeight * 0.4,
                                image:
                                    const AssetImage('assets/images/nft.jpg'),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: 15,
                              child: Row(
                                children: [
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: double.infinity,
                                      maxHeight: double.infinity,
                                    ),
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Icon(
                                      Iconsax.lovely,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Container(
                                constraints: const BoxConstraints(
                                  maxWidth: double.infinity,
                                  maxHeight: double.infinity,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey[500],
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 5,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: SafeArea(
                                  minimum: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Anatasya",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "15",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(width: 5.0,),
                                          Text(
                                            "Yrs Experience",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "\$ 750",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(width: 1.0,),
                                          Text(
                                            "/month",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
