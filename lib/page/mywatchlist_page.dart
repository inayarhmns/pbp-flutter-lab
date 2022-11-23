import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/details_watchlist.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/details.dart';
import 'package:counter_7/page/fetch_watchlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({super.key});

  @override
  State<MyWatchlistPage> createState() => _MyWatchlistPageState();
}

class _MyWatchlistPageState extends State<MyWatchlistPage> {
  _MyWatchlistPageState();
  List<String> watchedStatus = [
    "YES",
    "YES",
    "LISTED",
    "YES",
    "YES",
    "LISTED",
    "LISTED",
    "LISTED",
    "LISTED",
    "LISTED"
  ];

  List<bool> checkvalue = new List<bool>.filled(10, false); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Watchlist'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MyHomePage(title: "counter_7")),
                  );
                },
              ),
              ListTile(
                title: const Text('Form Budget'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyDetailsPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('My Watchlist'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyWatchlistPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: FutureBuilder(
            future: fetchWatchlist(),
            builder: (context, AsyncSnapshot snapshot) {

              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada to watch list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Container(
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                  color: watchedStatus[index] == "YES"
                                      ? Color.fromARGB(255, 47, 235, 22)
                                      : Color.fromARGB(255, 230, 134, 10),
                                  blurRadius: 2.0)
                            ]),
                            child: ListTile(
                              title: Text('${snapshot.data![index].title}'),
                              onTap: () {
                                snapshot.data[index].watched =
                                    watchedStatus[index];
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => detailWatchlist(
                                            itemHolder: snapshot.data[index])));
                              },

                              trailing: Checkbox(
                                value: checkvalue[index],
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkvalue[index] = value!;
                                    watchedStatus[index] = checkvalue[index] == true
                                        ? "YES"
                                        : "LISTED";

                                  });
                                },
                              ),
                            ),
                          )));
                }
              }
            }));
  }
}
