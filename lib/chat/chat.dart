import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:watsapp/PageData.dart';
import 'package:http/http.dart' as http;

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

List<dynamic> college = [];

class _ChatState extends State<Chat> {
  @override
  void initState() {
    Response();
    super.initState();
  }

  Future<void> Response() async {
    final declare = await http
        .get(Uri.parse("http://universities.hipolabs.com/search?name=middle"));
    if (declare.statusCode == 200) {
      setState(() {
        // log(declare.body);
        college = json.decode(declare.body);
      });
    } else {
      throw Exception("error");
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add_comment,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "WhatsApp",
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
        actions: [
          Icon(Icons.qr_code_scanner_outlined),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(Icons.camera_alt_outlined),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Flexible(
                  child: Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search...",
                    filled: true,
                    fillColor: Color.fromARGB(198, 232, 226, 226),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        borderSide: BorderSide.none),
                  ),
                ),
              )),
            ],
          ),
          // Column(mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Container(
          //       width: 70,
          //       height: 70,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.green,
          //       ),
          //       child: Icon(
          //         Icons.add_comment,
          //         size: 30,
          //       ),
          //     ),
          //   ],
          // ),
          Flexible(
              child: ListView.builder(
            itemCount: college.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {

                },
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(name_data[index].image),
                  ),
                  title: Text(
                    college[index]["name"],
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(college[index]["country"]),
                  trailing: Text(
                    name_data[index].time,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
