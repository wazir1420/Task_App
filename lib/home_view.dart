import 'package:flutter/material.dart';
import 'package:myui/task_item.dart';
import 'package:myui/task_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Map<String, String>> tasks = [
    {
      "title": "Complete Assignment #2",
      "date": "13 September 2022",
      "status": "To do",
    },
    {
      "title": "Submit Fee Chalan",
      "date": "18 September 2022",
      "status": "Done"
    }
  ];

  void _addTask(String title, String date, String status) {
    setState(() {
      tasks.add({
        "title": title,
        "date": date,
        "status": status,
      });
    });
  }

  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
        backgroundColor: const Color.fromARGB(255, 82, 133, 252),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: double.infinity, // Adjust as needed
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text to the left
                      children: [
                        Text(
                          'Welcome to Notes',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Have a great Day',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/dd.jpg',
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'My Priority Task',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 170,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                                IconData(
                                  0xe5c6,
                                  fontFamily: 'MaterialIcons',
                                ),
                                color: Color.fromARGB(255, 212, 207, 207)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '3 hours Ago',
                            style: TextStyle(
                                color: Color.fromARGB(255, 248, 245, 245)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Mobile App',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'UI Design',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'using figma',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 248, 245, 245),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'and other tools',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 248, 245, 245)),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 170,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Color.fromARGB(255, 212, 207, 207),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '5 hours Ago',
                            style: TextStyle(
                                color: Color.fromARGB(255, 248, 245, 245)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Capture sun',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Rise Shots',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'complete Guru',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 248, 245, 245),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Chanllenge',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 248, 245, 245)),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'My Tasks',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 235,
                ),
                Positioned(
                    bottom: -0.5,
                    right: -1,
                    child: Stack(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    AddTaskScreen(onAddTask: _addTask),
                              ));
                            },
                            icon: const Icon(
                              Icons.circle,
                              color: Color.fromARGB(255, 25, 219, 35),
                              size: 40,
                              weight: 40,
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    AddTaskScreen(onAddTask: _addTask),
                              ));
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 40,
                              weight: 40,
                            )),
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Today's Task",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 60,
                ),
                Text('Weekly Task'),
                SizedBox(
                  width: 60,
                ),
                Text('Monthly Task')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return TaskItem(
                        title: tasks[index]['title']!,
                        date: tasks[index]['date']!,
                        status: tasks[index]['status']!,
                        onDelete: () => _deleteTask(index),
                      );
                    }))
          ])),
      backgroundColor: const Color.fromARGB(255, 82, 133, 252),
    );
  }
}
