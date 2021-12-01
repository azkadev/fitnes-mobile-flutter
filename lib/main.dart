import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'pages/home.dart';
import 'pages/activity.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<MainPage> {
  var indexPage = 0;
  var listPage = [
    const HomePage(),
    const ActivityPage(),
  ];
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final getHeight = mediaQuery.size.height;
    final getWidht = mediaQuery.size.width;
    final appbarHeight = mediaQuery.padding.top;
    final bottomPadding = mediaQuery.padding.bottom;
    return Scaffold(
      backgroundColor: const Color(0xffF0F8FF),
      body: listPage[indexPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffF0F8FF),
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) {
          if (index <= 1) {
            setState(() {
              indexPage = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home, color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.activity, color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.chart, color: Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_2user, color: Colors.grey),
            label: "",
          ),
        ],
      ),
    );
  }
}
