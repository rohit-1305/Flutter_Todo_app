import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 32.0,
          ),
          color: Color(0XFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 32.0,
                      bottom: 32.0,
                    ),
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                  Expanded(
                      child: ListView(
                    children: [
                      TaskCardWidget(
                        title: "Get Started !!",
                        desc:
                            "Hello user welcome to todo app,this is default task that you can delete or edit to start using the app.",
                      ),
                      TaskCardWidget(),
                      TaskCardWidget(),
                      TaskCardWidget(),
                      TaskCardWidget(),
                      TaskCardWidget(),
                    ],
                  ))
                ],
              ),
              Positioned(
                bottom: 24.0,
                right: 0.0,
                child: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0XFF7349FE),
                  ),
                  child: Image.asset(
                    "assets/images/add_icon.png",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
