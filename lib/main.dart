import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact Profile',
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.arrow_back,
            ),
            title: const Text(
              "Panitnun's Profile",
              textAlign: TextAlign.end,
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {
                  print("Contact is starred");
                },
              )
            ],
          ),
          body: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 250,
                    child: Image.asset(
                      "images/profilePic.JPG",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Panitnun Suvannabun",
                          style: TextStyle(fontSize: 26),
                        )
                      ],
                    ),
                    height: 60,
                    color: const Color.fromARGB(179, 87, 81, 81),
                  ),
                  // const Divider(
                  //   color: Colors.grey,
                  //   thickness: 2,
                  // ),
                  Container(
                    margin: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildCallButton(),
                        buildTextButton(),
                        buildVideoCallButton(),
                        buildEmailButton()
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }

  Widget buildCallButton() {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.red,
            )),
        const Text("Call")
      ],
    );
  }

  Widget buildTextButton() {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message,
              color: Colors.red,
            )),
        const Text("Chat")
      ],
    );
  }

  Widget buildVideoCallButton() {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
              color: Colors.red,
            )),
        const Text("Video")
      ],
    );
  }

  Widget buildEmailButton() {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mail,
              color: Colors.red,
            )),
        const Text("Mail")
      ],
    );
  }
}
