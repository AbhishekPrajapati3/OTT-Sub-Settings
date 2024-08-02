import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Gender { male, female, other }

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String dropdownvalue = 'English UK';

  // List of items in our dropdown menu
  var items = [
    'English UK',
    'Hindi',
  ];
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Expanded(
            child: DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Settings",
                style: TextStyle(fontSize: width * .015),
              ),
              const TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white60,
                dividerColor: Colors.grey,
                indicatorColor: Colors.teal,
                // <-- Your TabBar
                tabs: [
                  Tab(
                    text: 'Account Settings',
                  ),
                  Tab(text: 'General Settings'),
                  Tab(
                    text: "Billing",
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 30, bottom: 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("Profile Picture"),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      CircleAvatar(
                                        radius: 13,
                                        child: Text("T"),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Card(
                                          color: Colors.teal,
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                12, 7, 12, 7),
                                            child: Text('Add',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0)),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 7, 10, 7),
                                            child: Text('Remove',
                                                style: TextStyle(
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("Profile Name"),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      Text("Name123"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0)),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 7, 10, 7),
                                            child: Text('Change',
                                                style: TextStyle(
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("Email Id"),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      Text("Txxxxxxxxxxxxx@xyz.com"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0)),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 7, 10, 7),
                                            child: Text('Change',
                                                style: TextStyle(
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("You will be using product as a "),
                                      Text(
                                        'Content Creator',
                                        style: TextStyle(color: Colors.teal),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0)),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 7, 10, 7),
                                            child: Text('Change',
                                                style: TextStyle(
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("Password"),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      Text("xxxxxxxxxxxx"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0)),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 7, 10, 7),
                                            child: Text('Change',
                                                style: TextStyle(
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("Current Plan"),
                                      SizedBox(
                                        width: width * .04,
                                      ),
                                      Text("Product AI Free Version"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Card(
                                          color: Colors.teal,
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                12, 7, 12, 7),
                                            child: Row(
                                              children: [
                                                Icon(Icons.arrow_circle_up),
                                                SizedBox(
                                                  width: width * .004,
                                                ),
                                                Text('Upgrade Plan',
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [],
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.teal,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0)),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                15, 7, 15, 7),
                                            child: Text('Cancel',
                                                style: TextStyle(
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Card(
                                          color: Colors.teal,
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                12, 7, 12, 7),
                                            child: Text('Save Settings',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                    Container(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 30, bottom: 0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Email Preferences"),
                                    SizedBox(
                                      height: height * .02,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 12, left: 12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Updates",
                                            style: TextStyle(fontSize: 13.5),
                                          ),
                                          SizedBox(
                                            width: 50,
                                            height: 30,
                                            child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Switch(
                                                value: false,
                                                onChanged: (bool value1) {},
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.white10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 12, left: 12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Recomendations",
                                            style: TextStyle(fontSize: 13.5),
                                          ),
                                          SizedBox(
                                            width: 50,
                                            height: 30,
                                            child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Switch(
                                                value: false,
                                                onChanged: (bool value1) {},
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: width * .04,
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Language"),
                                    DropdownButton(
                                      // Initial Value
                                      value: dropdownvalue,

                                      // Down Arrow Icon
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),

                                      // Array list of items
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Theme"),
                                    Row(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text('Dark'),
                                            Radio<int>(
                                              activeColor: Colors.teal,
                                              value: 0,
                                              groupValue: _selectedValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _selectedValue = value!;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text('Light'),
                                            Radio<int>(
                                              activeColor: Colors.teal,
                                              value: 1,
                                              groupValue: _selectedValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _selectedValue = value!;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Feedback & Suggestion"),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Card(
                                            color: Colors.teal,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  12, 7, 12, 7),
                                              child: Text('Feedback Form',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [],
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  color: Colors.teal,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.0)),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  15, 7, 15, 7),
                                              child: Text('Cancel',
                                                  style: TextStyle(
                                                      color: Colors.grey)),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Card(
                                            color: Colors.teal,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  12, 7, 12, 7),
                                              child: Text('Save Settings',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ])),
                    ),
                    Container(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 30, bottom: 0),
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text("You are using the FREE VERSION of the product"),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Card(
                                            color: Colors.teal,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  12, 7, 12, 7),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.arrow_circle_up),
                                                  SizedBox(
                                                    width: width * .004,
                                                  ),
                                                  Text('Upgrade Plan',
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Monthly Credits Left"),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                      Text("150  of  200")
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [ Text("Plans"),
                                    Container(decoration: BoxDecoration(border: Border.all(color: Colors.white10)),
                                      padding: EdgeInsets.all(16.0),
                                      child: Table(
                                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                        columnWidths: {
                                          0: FractionColumnWidth(0.25),
                                          1: FractionColumnWidth(0.25),
                                          2: FractionColumnWidth(0.25),
                                          3: FractionColumnWidth(0.25),
                                        },
                                        children: [
                                          TableRow(
                                            children: [
                                              Text(
                                                'Features',
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                'Free',
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                'Pro',
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                'Enterprise',
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Text('Credits'),
                                              Text('Limited (200 monthly)'),
                                              Text('Unlimited'),
                                              Text('Unlimited'),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Text('Resolution'),
                                              Text('360p, 720p'),
                                              Text('1080p'),
                                              Text('1080p'),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Text('Images'),
                                              Text('AI Generated'),
                                              Text('AI Generated, Manual'),
                                              Text('AI Generated, Manual'),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Text('Export Formats'),
                                              Text('PNG'),
                                              Text('PNG, WEBP'),
                                              Text('PNG, JPEG, WEBP'),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              SizedBox.shrink(),
                                              SizedBox.shrink(),
                                              InkWell(
                                                onTap: () {},
                                                child: Card(
                                                  color: Colors.teal,
                                                  child: Padding(
                                                    padding: EdgeInsets.fromLTRB(
                                                        0, 7, 0, 7),
                                                    child: Center(
                                                      child: Text('Upgrade To Pro',
                                                          style: TextStyle(
                                                              color: Colors.white)),
                                                    ),
                                                  ),
                                                ),
                                              ),InkWell(
                                                onTap: () {},
                                                child: Card(
                                                  color: Colors.teal,
                                                  child: Padding(
                                                    padding: EdgeInsets.fromLTRB(
                                                        0, 7, 0, 7),
                                                    child: Center(
                                                      child: Text('Upgrade To Enterprise',
                                                          style: TextStyle(
                                                              color: Colors.white)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [],
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  color: Colors.teal,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(
                                                    12.0)),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  15, 7, 15, 7),
                                              child: Text('Cancel',
                                                  style: TextStyle(
                                                      color: Colors.grey)),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Card(
                                            color: Colors.teal,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  12, 7, 12, 7),
                                              child: Text('Save Settings',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ])),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
