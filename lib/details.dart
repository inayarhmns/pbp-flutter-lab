import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDetailsPage extends StatefulWidget {
  MyDetailsPage({super.key});

  @override
  State<MyDetailsPage> createState() => _MyDetailsPageState();
}

class _MyDetailsPageState extends State<MyDetailsPage> {
  _MyDetailsPageState();
  String _judul = "";
  double nominal = 0;
  String tipeBudget = '';
  List<String> listtipeBudget = ['Pemasukan', 'Pengeluaran'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Data Budget'),
        ),
        // Menambahkan drawer menu
        drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  // Route menu ke halaman utama
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
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MyDetailsPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            
              if (isiDetails.isEmpty)
                Text("Belum ada data budget")
              else  
              for (int i = 0; i < isiDetails.length; i++)  
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child:
                  Container(
                    height: 100,
                    child: Card(
                        child: Row(
                          children: <Widget>[
                            Column(
                               textDirection: TextDirection.ltr,
                              children: <Widget>[
                              
                              Text(isiDetails.elementAt(i)["judul"], style: TextStyle(fontSize: 25),),
                              Text(isiDetails.elementAt(i)["nominal"],),
                              Text(isiDetails.elementAt(i)["tipeBudget"])])
                              
                             ]),
                        
                      

                    
                  ),
                  ),
                ),
          ],
        ));
  }

}
