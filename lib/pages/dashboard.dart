import 'package:flutter/material.dart';
import 'package:health_mate/pages/appointment.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final List catNames = [
    'General',
    'Pharmacy',
    'Schedule',
    'Infectious Disease',
  ];

  final List<Icon> catIcons = [
    Icon(MdiIcons.doctor,
        color: const Color.fromARGB(255, 4, 47, 82), size: 48),
    Icon(MdiIcons.pillMultiple,
        color: const Color.fromARGB(255, 154, 149, 22), size: 48),
    Icon(MdiIcons.scaleBathroom,
        color: const Color.fromARGB(255, 18, 84, 104), size: 48),
    Icon(MdiIcons.virus,
        color: const Color.fromARGB(255, 221, 83, 104), size: 48),
  ];

  final List imgs = [
    "images/doctor1.jpg",
    "images/doctor2.jpg",
    "images/doctor3.jpg",
    "images/doctor4.jpg",
    "images/doctor5.jpg",
  ];

  final List names = [
    "Dr. Shahin Alam",
    "Dr. Mim Akter",
    "Dr. James Murphy",
    "Dr. Janet Calia",
    "Dr. Jack Mbowa",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
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
              height: 160,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 0.5,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppointmentPage(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[900],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue[800],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Text('12\nTue',
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 20)),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.more_horiz,
                                    color: const Color.fromARGB(
                                        184, 255, 255, 255)),
                              ),
                              Text(names[index],
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          215, 255, 255, 255),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 8),
                              Text('10:00 AM',
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          225, 255, 255, 255),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 8),
                              Text('General Checkup',
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          224, 255, 255, 255),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
