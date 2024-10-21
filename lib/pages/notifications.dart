import 'package:flutter/material.dart';


class NotificationPage extends StatefulWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationPage> {
  // Sample data for notifications
  List<Map<String, dynamic>> notifications = [
    {
      "title": "Appointment Reminder",
      "body": "You have an appointment with Dr. Shahin Alam tomorrow at 10:00 AM.",
      "date": "2023-10-19",
      "isRead": false,
    },
    {
      "title": "Lab Results Available",
      "body": "Your blood test results are now available.",
      "date": "2023-10-18",
      "isRead": true,
    },
    // Add more notifications as needed
  ];

  void _markAsRead(int index) {
    setState(() {
      notifications[index]["isRead"] = true;
    });
  }

  void _deleteNotification(int index) {
    setState(() {
      notifications.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: notifications.isEmpty
          ? Center(
              child: Text('No notifications'),
            )
          : ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                var notification = notifications[index];
                return Dismissible(
                  key: Key(notification["title"]),
                  onDismissed: (direction) {
                    _deleteNotification(index);
                  },
                  background: Container(color: Colors.red),
                  child: ListTile(
                    leading: Icon(
                      notification["isRead"]
                          ? Icons.notifications_none
                          : Icons.notifications_active,
                      color: notification["isRead"] ? Colors.grey : Colors.blue,
                    ),
                    title: Text(notification["title"]),
                    subtitle: Text(notification["body"]),
                    trailing: IconButton(
                      icon: Icon(
                        notification["isRead"] ? Icons.mark_email_read : Icons.mark_email_unread,
                      ),
                      onPressed: () => _markAsRead(index),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
