
import 'package:flutter/material.dart';
import 'package:watsapp/calls/calls.dart';
import 'package:watsapp/chat/chat.dart';
import 'package:watsapp/communites/comunitties.dart';
import 'package:watsapp/updates/updates.dart';

class BottomNavigations extends StatefulWidget {
  BottomNavigations({super.key});

  @override
  State<BottomNavigations> createState() => _BottomNavigationsState();
}

class _BottomNavigationsState extends State<BottomNavigations> {
  int _selectedindex = 0;

  List page = [Chat(),Updates(),communites(),Calls()];

  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(

        unselectedItemColor: Color.fromARGB(255, 14, 14, 14),
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        currentIndex: _selectedindex,
        onTap: (indexvalue) {
         setState(() {
            _selectedindex = indexvalue;
           
         });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Colors.black,
              ),
              label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_backup_restore_rounded),
              label: "Updates"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline_sharp,), label: "Community",),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_sharp),
            label: "Calls",
          )
        ],
      ),
    );
  }
}
