import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'askQuestion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIH-Prototype',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController langController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done

    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "images/logo.png",
            height: 200,
          ),
          toolbarHeight: 100,
          backgroundColor: Color(0xffF0C687),
          actions: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("English"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.person,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
          bottom: TabBar(
            labelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Ask a question",
                  style: GoogleFonts.roboto(color: Colors.black),
                ),
              ),
              Tab(
                text: "Know about a Law",
              ),
              Tab(
                text: "Contact a Legal Advisor",
              ),
              Tab(
                text: "how to get a document?",
              ),
              Tab(
                text: "KYR-Trivia",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            MyAskQuestionPage(),
            Center(
              child: Text("to be added this is a prototype"),
            ),
            Center(
              child: Text("to be added this is a prototype"),
            ),
            Center(
              child: Text("to be added this is a prototype"),
            ),
            Center(
              child: Text("to be added this is a prototype"),
            ),
          ],
        ),
      ),
    );
  }
}
