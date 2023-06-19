import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> options = [
    {
      'title': 'Scan QR Code',
      'route': '/qr_scanpage',
      'icon': Icons.qr_code,
    },
    {
      'title': 'Scan Barcode',
      'route': '/barcode_scan',
      'icon': Icons.qr_code,
    },
    {
      'title': 'Generate QR Code',
      'route': '/qr_generator',
      'icon': Icons.qr_code_scanner,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR & Barcode'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Center(
                child: Text(
                  'Welcome to QR & Barcode',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 32),
            Expanded(
              child: ListView.builder(
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, options[index]['route']);
                    },
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Icon(
                              options[index]['icon'],
                              size: 32,
                            ),
                            SizedBox(width: 16),
                            Text(
                              options[index]['title'],
                              style: TextStyle(fontSize: 18),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward),
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.black26,
                              backgroundImage:
                                  AssetImage('images/180px-LDUQuitologo2.png'),
                            ),
                          ],
                        ),
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
