import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text("A D D   T O   C A R T"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (counter != 0) {
                      counter -= 1;
                    }
                  });
                },
                icon: const Icon(
                  Icons.remove,
                  size: 32,
                ),
              ),
              const SizedBox(
                height: 35,
                width: 35,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    counter += 1;
                  });
                },
                icon: const Icon(
                  Icons.add,
                  size: 32,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Badge(
                badgeContent: Text(
                  "$counter",
                  style: const TextStyle(color: Colors.white),
                ),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 80,
                )),
          ),
        ],
      ),
    );
  }
}
