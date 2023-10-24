import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: const Center(
            child: Text(
              "BUSINESS CARD",
              style: TextStyle(
                fontSize: 18,
                color: Colors.lightGreen,
              ),
            ),
          ),
        ),
        body: const MainBody(),
      ),
    );
  }
}

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 550,
        height: 600,
        color: Colors.lightBlue,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 10),
            CircleAvatar(
              backgroundImage: AssetImage("asset/image/juliuspic.jpg"),
              backgroundColor: Colors.white,
              radius: 80.0,
            ),
            Divider(
              thickness: 3,
              color: Colors.yellow,
              height: 10.0,
            ),
            Center(
              child: Text(
                "JULIUS O. OGUNNIYI (MNSE)",
                style: TextStyle(
                  fontSize: 26.0,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.yellow,
              height: 10.0,
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 25.0,
                ),
                Text(
                  "+2348166795479",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 25.0,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "juliusolasunmibo321@gmail.com",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: 'SourceCodePro-VariableFont_wght'),
                ),
              ],
            ),
            Text(
              "You can trust us for your mobile apps development",
              style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
