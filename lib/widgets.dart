import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String desc;
  TaskCardWidget({this.title, this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "(Unnamed Task)",
            style: TextStyle(
              color: Color(0XFF211551),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              desc ?? "No description Added.",
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0XFF868290),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          vertical: 28.0,
          horizontal: 24.0,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 16.0),
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                color: Color(0XFF7349FE),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Image(
                image: AssetImage('assets/images/check_icon.png'),
              ),
            ),
            Text("Todo Widget",
            style: TextStyle(
              color: Color(0XFF211551),
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              
            ),),
          ],
        ));
  }
}
