import 'package:flutter/material.dart';
import 'package:todo_app/utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/FB_IMG_1628625487828.jpg")),
        title: const Text(
          "My Tasks",
        ),
        elevation: 0,
        actions: const [
          Icon(
            Icons.sort,
          ),
          SizedBox(width: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.search),
        )
          
        ],
      ),
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const Icon(
                Icons.check_circle_outline,
                color: Colors.pinkAccent,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Plan a trip to Finland",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: customBlue),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Plan a trip to Finland with my soul and babies",
                      maxLines:3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black38,fontSize: 16
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.notifications,
                    color: Colors.pinkAccent,
                  ),
                  Text(
                    "Yesturday",
                    style: TextStyle(color: Colors.pinkAccent),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16), 
        child: SafeArea(
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(37, 43, 103, 0.4),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: customBlue,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Completed',
                        style: TextStyle(
                            color: customBlue, fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: customBlue,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    '24',
                    style: TextStyle(color: customBlue),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
