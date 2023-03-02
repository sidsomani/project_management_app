import 'package:flutter/material.dart';
import 'todo.dart';
import 'home.dart';
import 'main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEFF5),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 5,
            padding: const EdgeInsets.all(15),

            tabs: [
              const GButton(
                icon: Icons.home,
                text: 'Home',
              ),

              GButton(
                icon: Icons.list,
                text: 'ToDo',
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteManager.todoPage);
                },
              ),

              const GButton(
                icon: Icons.note_add,
                text: 'Notes',
              ),

              const GButton(
                icon: Icons.calendar_month,
                text: 'Schedule',
              ),
            ],

          ),
        ),
      ),

      appBar: AppBar(
        backgroundColor: Color(0xFFEEEFF5),
        title: Text('Home Page',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,

      ),
    );
  }
}



