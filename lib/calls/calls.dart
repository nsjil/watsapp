import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.add_ic_call_rounded,color: Colors.white,size: 30,),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "calls",
              style: TextStyle(
                  color: const Color.fromARGB(255, 13, 14, 13), fontSize: 30),
            ),
          ],
        ),
        actions: [
          Icon(Icons.qr_code_scanner_outlined),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(Icons.camera_alt_outlined),
          ),
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "favorites",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 101, 99, 99),
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton.filled(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.green)),
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: const Color.fromARGB(255, 243, 242, 241),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Add to Favorites",
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300, top: 10),
                child: Container(
                  width: 70,
                  height: 70,
                  child: Text(
                    "Recent",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 110, 109, 109),
                        fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
