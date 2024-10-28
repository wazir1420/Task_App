import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final String date;
  final String status;
  final VoidCallback onDelete;
  const TaskItem(
      {super.key,
      required this.title,
      required this.date,
      required this.status,
      required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 55,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color.fromARGB(255, 4, 100, 179)),
                            child: Center(
                                child: Text(
                              status,
                              style: const TextStyle(color: Colors.white),
                            )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.calendar_month),
                          Text(
                            date,
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.flag_sharp,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 60,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: onDelete,
                      icon: const Icon(
                        Icons.delete,
                        size: 35,
                      )),
                  const Icon(
                    Icons.more_vert,
                    size: 35,
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
