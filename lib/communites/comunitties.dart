import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:watsapp/communites/community_data.dart';

class communites extends StatelessWidget {
  const communites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Communites",
              style: TextStyle(color: Color.fromARGB(255, 14, 15, 14)),
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          height: 50,
                          width: 50,
                          child: IconButton(
                            //   // style: ButtonStyle(
                            //   //     backgroundColor:
                            //   //         WidgetStatePropertyAll(Colors.grey)),
                            onPressed: () {},
                            icon: Icon(
                              Icons.people,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 25,
                          top: 23,
                          child: IconButton.filled(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.green),
                                iconSize: WidgetStatePropertyAll(20),
                                shape: WidgetStatePropertyAll(CircleBorder(
                                    side: BorderSide(
                                        width: 7, color: Colors.white)))),
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              // size: 20,
                            ),
                          ))
                    ],
                  ),
                ),
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "New Community",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
            Flexible(
              child: ListView.builder(
                itemCount: Community_page.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            size: 60,
                          ),
                          title: Text(
                            Community_page[index].names,
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(Community_page[index].titles),
                          trailing: Text(Community_page[index].times),
                        ),
                      ),
                      Divider(
                        thickness: 10,color: Colors.grey[300],
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
