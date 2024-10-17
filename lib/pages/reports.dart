import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ReportPage extends StatelessWidget {
  ReportPage({Key? key}) : super(key: key);

  // Sample data for reports
  final List<Map<String, String>> reports = [
    {
      "title": "Blood Test",
      "date": "2023-09-15",
      "doctor": "Dr. James Murphy",
    },
    {
      "title": "X-Ray Result",
      "date": "2023-08-20",
      "doctor": "Dr. Janet Calia",
    },
    // Add more reports as needed
  ];

  void _viewReport(BuildContext context, Map<String, String> report) {
    // Implement the logic to view report details
    // For simplicity, we'll navigate to a new page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ReportDetailPage(report: report),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports'),
      ),
      body: ListView.builder(
        itemCount: reports.length,
        itemBuilder: (context, index) {
          var report = reports[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Icon(MdiIcons.fileDocument),
              title: Text(report["title"]!),
              subtitle: Text('Date: ${report["date"]}'),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () => _viewReport(context, report),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ReportDetailPage extends StatelessWidget {
  final Map<String, String> report;

  ReportDetailPage({required this.report});

  void _downloadReport() {
    // Implement the logic to download the report
    print("Download Report");
  }

  void _shareReport() {
    // Implement the logic to share the report
    print("Share Report");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(report["title"]!),
        actions: [
          IconButton(
            icon: Icon(Icons.download),
            onPressed: _downloadReport,
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: _shareReport,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Report Details for ${report["title"]}\n\n'
          'Date: ${report["date"]}\n'
          'Doctor: ${report["doctor"]}\n\n'
          'Report Content Goes Here...',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
