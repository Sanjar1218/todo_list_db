import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'my_flutter_app_icons.dart';

class OpenPage extends StatefulWidget {
  const OpenPage({Key? key}) : super(key: key);

  @override
  State<OpenPage> createState() => _OpenPageState();
}

class _OpenPageState extends State<OpenPage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(
        leading: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 252, 252, 252),
            elevation: 0,
          ),
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Color.fromARGB(255, 252, 252, 252),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Text('List'),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      box(Icon(Icons.assignment), 'All', 23),
                      box(Icon(Icons.work), 'Work', 14)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      box(
                          Icon(
                            MyFlutterApp.plane_icone,
                            color: Color.fromARGB(255, 106, 209, 138),
                          ),
                          'All',
                          23),
                      box(
                          Transform(
                              transform: Matrix4.rotationZ(3.14 / 4),
                              child: Icon(Icons.airplanemode_active_outlined)),
                          'Work',
                          14)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      box(Icon(Icons.document_scanner), 'All', 23),
                      box(Icon(Icons.work), 'Work', 14)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Container box(var icon, String name, int tasks) {
    return Container(
      width: 86,
      height: 85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              Text(tasks.toString() + ' tasks'),
            ],
          )
        ],
      ),
    );
  }
}
