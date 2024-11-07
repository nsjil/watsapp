

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:watsapp/updates/updatedata.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Updates",
              style: TextStyle(color: const Color.fromARGB(255, 6, 6, 6)),
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
          Icon(Icons.more_vert)
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 10,
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: Text(
                  "Status",
                  style: TextStyle(fontSize: (20)),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300, top: 20),
            child: Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  color: Color.fromARGB(0, 225, 8, 8),
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.account_circle,
                            size: 80,
                            color: Colors.grey,
                          ),
                        ),
                        Positioned(
                            right: -1,
                            bottom: -1,
                            child: Icon(
                              Icons.add_circle,
                              size: 30,
                              color: Colors.green,
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("My Status"),
              )
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Channels",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Text(
                    "Explore >",
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  )
                ],
              ),
            ]),
          ),
          Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // children: [
              //   Padding(
              //     padding: const EdgeInsets.only(left: 10),
              //     child: Container(
              //       height: 80,
              //       width: 80,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(40),
              //         image: DecorationImage(
              //             image: NetworkImage(
              //                 "https://th.bing.com/th/id/OIP.z30Cuc5g2AoWC-LHX7y9jQHaH0?w=170&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7")),
              //     ),
              //     ),
              //   ),
              // Text("AMERICAN COMPANY",style: TextStyle(fontSize: 20),)],

              ),
          ListTile(
            leading: Image(
              image: NetworkImage(
                  "https://th.bing.com/th/id/OIP.z30Cuc5g2AoWC-LHX7y9jQHaH0?w=170&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
            ),
            title: Text(
              "AMERICAN COMPANY",
              style: TextStyle(fontSize: 20),
            ),
            trailing: Text("04:00 PM"),
            subtitle: Text("helloo everyone.....i think everybody for yo..."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Find Channels",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Update_Page.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 170,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 251, 251, 252)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        Update_Page[index].image),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.amber),
                          ),
                        ),
                        Text(
                          Update_Page[index].name,
                          style: TextStyle(fontSize: 20),
                        ),
                        InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green[100],
                            ),child: Center(child: Text("follow")),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
