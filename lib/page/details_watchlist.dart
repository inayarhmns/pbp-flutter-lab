import 'package:counter_7/main.dart';
import 'package:intl/intl.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/mywatchlist_page.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class detailWatchlist extends StatelessWidget {
  final WatchlistItem itemHolder;

  detailWatchlist({super.key, required this.itemHolder});

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
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
      body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                    child: Text(
                  '${itemHolder.title}',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
                Container(
                  padding: EdgeInsets.only(top: 40, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Release Date: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: DateFormat('MMMM dd, yyyy').format(DateTime.parse('${itemHolder.release_date}'))),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Rating: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: '${itemHolder.rating}/5'),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Watched: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: '${itemHolder.watched}'),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Review: \n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: '${itemHolder.review}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ])),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          child: ElevatedButton(
            onPressed: () {
              goBack(context);
            },
            child: Text('Back'),
          ),
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        ),
        elevation: 5,
      ),
    );
  }
}


