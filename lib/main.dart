import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Color boton_accessibility = Colors.black;
  Color boton_timer = Colors.black;
  Color boton_phone_android1 = Colors.black;
  Color boton_phone_android2 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(),
          left: BorderSide(),
          right: BorderSide(),
          bottom: BorderSide(),
        ),
      ),
      margin: EdgeInsets.all(20.0),
      height: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle_sharp,
                size: 60,
              ),
              Column(
                children: [
                  Text(
                    "Flutter McFlutter",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Experience App Developer")
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: <Widget>[
                  const Text("123 Main Street"),
                  IconButton(
                    icon: Icon(Icons.accessibility),
                    color: boton_accessibility,
                    onPressed: () {
                      setState(() {
                        const snackBar = SnackBar(
                          content: Text('Yay! A SnackBar!'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        boton_accessibility =
                            boton_accessibility == Colors.black
                                ? Colors.indigo
                                : Colors.black;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text("     "),
                  IconButton(
                    icon: Icon(Icons.timer),
                    color: boton_timer,
                    onPressed: () {
                      setState(() {
                        boton_timer = boton_timer == Colors.black
                            ? Colors.indigo
                            : Colors.black;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text("           "),
                  IconButton(
                    icon: Icon(Icons.phone_android),
                    color: boton_phone_android1,
                    onPressed: () {
                      setState(() {
                        boton_phone_android1 =
                            boton_phone_android1 == Colors.black
                                ? Colors.indigo
                                : Colors.black;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text("(415) 555-0198"),
                  IconButton(
                    icon: Icon(Icons.phone_android),
                    color: boton_phone_android2,
                    onPressed: () {
                      setState(() {
                        boton_phone_android2 =
                            boton_phone_android2 == Colors.black
                                ? Colors.indigo
                                : Colors.black;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
