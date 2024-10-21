import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SchedulePage extends StatefulWidget {
  SchedulePage({Key? key}) : super(key: key);

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  // Sample data for appointments
  List<Map<String, String>> appointments = [
    {
      "date": "2023-10-20",
      "time": "10:00 AM",
      "doctor": "Dr. Shahin Alam",
      "type": "General Checkup",
    },
    {
      "date": "2023-10-22",
      "time": "2:00 PM",
      "doctor": "Dr. Mim Akter",
      "type": "Dental Cleaning",
    },
    // Add more appointments as needed
  ];

  // Selected date from the calendar
  DateTime selectedDate = DateTime.now();

  // Method to display date picker
  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  // Method to add a new appointment
  void _addAppointment() {
    // Implement the logic to add a new appointment
    // For simplicity, we'll just print a message
    print("Add Appointment");
  }

  // Method to edit an appointment
  void _editAppointment(int index) {
    // Implement the logic to edit an appointment
    print("Edit Appointment at index $index");
  }

  // Method to delete an appointment
  void _deleteAppointment(int index) {
    setState(() {
      appointments.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _addAppointment,
          ),
        ],
      ),
      body: Column(
        children: [
          // Calendar View
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "Selected Date: ${selectedDate.toLocal()}".split(' ')[0],
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                ElevatedButton(
                  style: Theme.of(context).elevatedButtonTheme.style,
                  onPressed: () => _selectDate(context),
                  child: Text('Select date',
                      style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
          // List of Appointments
          Expanded(
            child: ListView.builder(
              itemCount: appointments.length,
              itemBuilder: (context, index) {
                var appointment = appointments[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    leading: Icon(MdiIcons.calendarCheck),
                    title: Text(
                        '${appointment["type"]} with ${appointment["doctor"]}'),
                    subtitle: Text(
                        '${appointment["date"]} at ${appointment["time"]}'),
                    trailing: PopupMenuButton(
                      onSelected: (value) {
                        if (value == 'edit') {
                          _editAppointment(index);
                        } else if (value == 'delete') {
                          _deleteAppointment(index);
                        }
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 'edit',
                          child: Text('Edit'),
                        ),
                        PopupMenuItem(
                          value: 'delete',
                          child: Text('Cancel'),
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
    );
  }
}
