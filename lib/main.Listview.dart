import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Example'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center( // ✅ จัด Stack ให้อยู่กลางจอ
        child: Stack(
          alignment: Alignment.center, // จัดกึ่งกลาง children ที่ไม่ได้กำหนดตำแหน่ง
          children: <Widget>[
            Container(width: 200, height: 200, color: Colors.blue),   // ชั้นล่างสุด
            Container(width: 150, height: 150, color: Colors.green),  // ชั้นกลาง
            Container(width: 100, height: 100, color: Colors.red),    // ชั้นบนสุด
            const Text(
              'Layered',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
