import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  // list category item menu

  List itemLists = ['Cetak KRS', 'Cetak KHS', 'Skripsi', 'Absen'];

  // list image
  List itemImages = [
    Image(image: AssetImage('assets/documentation.png'), width: 50, height: 50),
    Image(image: AssetImage('assets/printer.png'), width: 50, height: 50),
    Image(image: AssetImage('assets/graduate.png'), width: 50, height: 50),
    Image(image: AssetImage('assets/presence.png'), width: 50, height: 50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Navigation Bar
      bottomNavigationBar: NavigationBar(
        destinations: <Widget>[
          NavigationDestination(icon: Icon(Icons.menu), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.school), label: 'KRS'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      // end Navigation Bar

      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              height: MediaQuery.of(context).size.height / 3.4,
              width: MediaQuery.of(context).size.width,

              // custom decoration container
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              // child container
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/logouk.png'),
                        height: 70,
                        width: 70,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.logout,
                                color: Colors.grey,
                                size: 25,
                              ),
                              Text(
                                "Logout",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ))
                    ],
                  ),
                  // text
                  Text(
                    "Sisitem Informasi Akademik",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 94, 92, 92)),
                  ),

                  // text Dashboard
                  Text(
                    "Dashboard",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 94, 92, 92),
                    ),
                  ),

                  SizedBox(height: 20),
                  // Form Search
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, size: 25),
                      filled: true,
                      fillColor: Color.fromARGB(255, 234, 234, 234),
                      hintText: 'Cari',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            // container card info
            Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 0, bottom: 0),
                child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 241, 241, 241),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(
                            "Yasir Muin",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 25,
                                fontWeight: FontWeight.normal),
                          ),
                          subtitle: Text("Npm : 07351411105"),
                          trailing: Column(
                            children: [
                              Text(
                                "Semester",
                              ),
                              Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),

            // container body
            Expanded(
                child: ListView(
              padding: EdgeInsets.all(15),
              children: <Widget>[
                GridView.builder(
                    itemCount: itemLists.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        color: Color.fromARGB(255, 241, 241, 241),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  itemImages[index],
                                  SizedBox(height: 20),
                                  Text(
                                    itemLists[index],
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black.withOpacity(0.7)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    })
              ],
            ))
          ],
        ),
      ),
    );
  }
}
