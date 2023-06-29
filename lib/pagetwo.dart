// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "morning",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 150,
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: const Icon(Icons.shop)),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: const Icon(Icons.notification_add_rounded)),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.black),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "24 April mon",
                      style:
                          TextStyle(color: Color.fromARGB(255, 244, 240, 227)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Today's Progress",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "10/12 Tasks",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      "83%",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 80,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1533135091724-62cc5402aa20?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGFic3RyYWN0JTIwYmxhY2t8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            NewWidgetTo(
              text: 'Ongoing',
              text2: '2',
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: NewWidget(
                text: 'Cretes wireframe',
                text2: 'Today',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 1,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: NewWidget(text: "Design home page", text2: "Today"),
            ),
            const SizedBox(
              height: 30,
            ),
            NewWidgetTo(text: "Completed", text2: '10'),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.keyboard_arrow_right_sharp),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Watering the plants",
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                    Text("Today")
                  ],
                ),
                const SizedBox(
                  width: 160,
                ),
                Container(
                  height: 50,
                  width: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 41, 26, 255)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidgetTo extends StatelessWidget {
  String text;
  String text2;
  NewWidgetTo({super.key, required this.text, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 7,
          ),
          Container(
            height: 30,
            width: 30,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            child: Center(child: Text(text2)),
          ),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  String text;
  String text2;
  NewWidget({super.key, required this.text, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(
          width: 9,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              text2,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
