import 'package:flutter/material.dart';

class MyAskQuestionPage extends StatefulWidget {
  const MyAskQuestionPage({super.key});

  @override
  State<MyAskQuestionPage> createState() => _MyAskQuestionPage();
}

class _MyAskQuestionPage extends State<MyAskQuestionPage> {
  final TextEditingController _controller = TextEditingController();

  Widget _buildTextComposer() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            onSubmitted: (value) => Null,
            decoration:
                const InputDecoration.collapsed(hintText: "Ask a question"),
          ),
        ),
        ButtonBar(
          children: [
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {
                // _isImageSearch = false;
                // _sendMessage();
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Flexible(
            child: ListView.builder(
              // padding: EdgeInsets.all(50),
              itemCount: 50, //_messages.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(50),
                  // color: Colors.amberAccent,
                  child: Text(
                    "dsfhak",
                    textAlign: TextAlign.center,
                  ),
                  // height: 50,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Container(
              constraints: BoxConstraints(minWidth: 100, maxWidth: 1100),
              padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
              decoration: BoxDecoration(
                color: Color(0xff6F7FFE),

                borderRadius: BorderRadius.circular(30.0),
                // border: Border.all(
                //   color: Colors.black, // Set the border color
                //   width: 2.0, // Set the border width
                // ),
                // color: Colors.amber,
              ),
              child: _buildTextComposer(),
            ),
          )
        ],
      ),
    ));
  }
}
