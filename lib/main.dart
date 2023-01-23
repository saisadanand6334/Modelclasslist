import 'package:flutter/material.dart';
import 'package:modelclass/modell.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: const Mdla()));
}

class Mdla extends StatefulWidget {
  const Mdla({Key? key}) : super(key: key);

  @override
  State<Mdla> createState() => _MdlaState();
}

class _MdlaState extends State<Mdla> {
  List live = [
    Rome(con: 'Brazil', pho: 'img/bra.jpg', subcon: 'rosario'),
    Rome(con: 'Paris', pho: 'img/images (5).jpg', subcon: 'francis'),
    Rome(con: 'Spain', pho: 'img/pyr.jpg', subcon: 'mandrid'),
    Rome(con: 'Japan', pho: 'img/mou.jpg', subcon: 'nihongo'),
    Rome(con: 'America', pho: 'img/sta.jpg', subcon: 'statue liberty'),
    Rome(con: 'Italian', pho: 'img/rome.jpg', subcon: 'turan')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "List view",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  child: Text(
                    'Views',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),


                  ),




              ),
              ListTile(
                title: const Text('City view'),
              ),
              ListTile(
                title: const Text('Nearby'),
              ),
              ListTile(
                title: const Text('Explore'),
                tileColor: Colors.blue,
                textColor: Colors.cyan,
              )

            ],

          ),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Search view',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                    label: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: live.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(children: [
                        CircleAvatar(
                          radius: 46,
                          backgroundColor: Colors.blue,
                          child: Image.asset(
                            live[index].pho,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              live[index].con,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            Text(
                              live[index].subcon,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ]),
                    );
                  },
                )
              ]),
        ));
  }
}
