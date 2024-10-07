import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    DashboardGrid(),
    // SchedulePage(),
    // ReportPage(),
    // NotificationPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Health Mate'),
        // ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 32,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Colors.grey[800],
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_sharp),
              label: 'Report',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardGrid extends StatelessWidget {
  List catNames = [
    'General',
    'Pharmacy',
    'Schedule',
    'Infectious Disease',
  ];

  List<Icon> catIcons = [
    Icon(MdiIcons.doctor,
        color: const Color.fromARGB(255, 4, 47, 82), size: 48),
    Icon(MdiIcons.pillMultiple,
        color: const Color.fromARGB(255, 154, 149, 22), size: 48),
    Icon(MdiIcons.scaleBathroom,
        color: const Color.fromARGB(255, 18, 84, 104), size: 48),
    Icon(MdiIcons.virus,
        color: const Color.fromARGB(255, 221, 83, 104), size: 48),
  ];

  List imgs = [
    "images/doctor1.jpg",
    "images/doctor2.jpg",
    "images/doctor3.jpg",
    "images/doctor4.jpg",
    "images/doctor5.jpg",
  ];

  DashboardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Icon(MdiIcons.handWave,
                          color: const Color.fromARGB(255, 190, 192, 46),
                          size: 18),
                      SizedBox(width: 4),
                      Text('Hello!',
                          style: Theme.of(context).textTheme.bodySmall),
                    ]),
                    Text("Shahin Alam",
                        style: Theme.of(context).textTheme.headlineMedium),
                  ],
                ),
                Spacer(),
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("images/doctor2.jpg"),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8, bottom: 20, left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            height: 48,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.lightBlue[50],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.grey, size: 20),
                border: InputBorder.none,
                suffixIcon: Icon(Icons.filter_list, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text("Services",
                style: Theme.of(context).textTheme.headlineSmall),
          ),
          SizedBox(height: 20),
          Container(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: catNames.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: catIcons[index],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(top: 8, bottom: 20, left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            height: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.lightBlue[50],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("Get the Best\nMedical Service",
                          style: Theme.of(context).textTheme.headlineMedium),
                      SizedBox(height: 12),
                      Text("Book an appointment now",
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                  Spacer(),
                  Image.asset("images/doctor3.jpg",
                      width: 250,
                      height: 200,
                      fit: BoxFit.cover,
                      scale: 0.8,
                      alignment: Alignment.centerRight,
                      colorBlendMode: BlendMode.lighten),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text("Upcoming Appointments",
                style: Theme.of(context).textTheme.headlineSmall),
          ),
          SizedBox(height: 20),
          Container(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: imgs.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(imgs[index],
                            width: 160,
                            height: 160,
                            fit: BoxFit.cover,
                            scale: 0.8,
                            alignment: Alignment.center,
                            colorBlendMode: BlendMode.lighten),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
