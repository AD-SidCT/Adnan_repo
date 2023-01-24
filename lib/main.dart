import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double changeslidervalue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Material App Demo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Click"),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Click"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Click2"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("Click3"),
                ),
              ],
            ),
            Switch(
              activeColor: Colors.black,
              activeTrackColor: Colors.white,
              onChanged: (isEnabled) {},
              value: false,

            ),
            Slider(
              value: changeslidervalue,
              onChanged: (value) {
                setState(() {
                  changeslidervalue = value;
                });
              },
              max: 100,
              min: 0,
            ),
            Image(

              // MediaQuery.of(context).size.width,
              image:
              NetworkImage('https://picsum.photos/250?image=9'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Input",
                  hintText: "Write Here",
                  suffix: IconButton(
                    icon: Icon(Icons.mail),
                    onPressed: () {},
                  )),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Input",
                  hintText: "Write Here",
                  suffix: IconButton(
                    icon: Icon(Icons.mail),
                    onPressed: () {},
                  )),
            )
          ],
        ),
      ),
    );
  }
}