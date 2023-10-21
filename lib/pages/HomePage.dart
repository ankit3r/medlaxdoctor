import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> pro = ["Profile", "Reviews", "Earning", "Chats", "Patients", "Appointment"];
    List<IconData> proIcon = [
      Icons.person,
      Icons.thumb_up_alt,
      Icons.monetization_on,
      Icons.chat_bubble,
      Icons.add_box_rounded,
      Icons.date_range,
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.yellow,
            tabs: [
              Tab(text: 'APPS'),
              Tab(text: 'SUMMARY'),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none))
          ],
          backgroundColor: Colors.red,
          actionsIconTheme: const IconThemeData(color: Colors.white),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Like'),
                onTap: () {
                  // Add your custom logic here
                },
              ),
              ListTile(
                title: const Text('Support'),
                onTap: () {
                  // Add your custom logic here
                },
              ),
              ListTile(
                title: const Text('Contact'),
                onTap: () {
                  // Add your custom logic here
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // App Tab Content
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                     Row(children: [
                       const SizedBox(
                         width: 80,
                         height: 80,
                         child: CircleAvatar(
                           backgroundColor: Colors.indigoAccent,
                           child: Image(image: AssetImage("assets/images/doctor1.png")),
                         ),
                       ),
                       const SizedBox(width: 30),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const Text(
                             "Dr. Parul Gupta",
                             style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
                           ),
                           const Text(
                             "Dentist",
                             style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                           ),
                         ],
                       ),
                     ],),
                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "My Balance",
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                  const Text(
                                    "₹10990.00",
                                    style: TextStyle(color: Colors.yellow, fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(color: Colors.yellow),
                            Wrap(
                              children: [
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Icon(proIcon[0]),
                                        Text(pro[0]),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Icon(proIcon[1]),
                                        Text(pro[1]),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Icon(proIcon[2]),
                                        Text(pro[2]),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Icon(proIcon[3]),
                                        Text(pro[3]),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Icon(proIcon[4]),
                                        Text(pro[4]),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Icon(proIcon[5]),
                                        Text(pro[5]),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Upcoming Appointment",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const Text(
                            "VIEW ALL",
                            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      const Divider(),
                      const Card(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Mr. Devesh Gupta"),
                                  const Text("In-Clinic Appointment"),
                                ],
                              ),
                              const Text("06 Aug 2021, 10:30 AM"),
                              const Icon(Icons.done, color: Colors.red),
                            ],
                          ),
                        ),
                      ),
                      const Divider(),
                      const Card(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Mr. Devesh Gupta"),
                                  const Text("In-Clinic Appointment"),
                                ],
                              ),
                              const Text("06 Aug 2021, 10:30 AM"),
                              const Icon(Icons.done, color: Colors.red),
                            ],
                          ),
                        ),
                      ),
                      const Divider(),
                      const Card(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Mr. Devesh Gupta"),
                                  const Text("In-Clinic Appointment"),
                                ],
                              ),
                              const Text("06 Aug 2021, 10:30 AM"),
                              const Icon(Icons.done, color: Colors.red),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Summary Tab Content
            Center(
              child: const Text(
                'Summary Content',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
