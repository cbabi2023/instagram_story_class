import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myUserList = [
      {
        "name": "John",
        "dp":
            "https://images.pexels.com/photos/45853/grey-crowned-crane-bird-crane-animal-45853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/4927361/pexels-photo-4927361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      },
      {
        "name": "Alice",
        "dp":
            "https://images.pexels.com/photos/1406506/pexels-photo-1406506.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/4284318/pexels-photo-4284318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      },
      {
        "name": "Bob",
        "dp":
            "https://images.pexels.com/photos/1078947/pexels-photo-1078947.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/4298629/pexels-photo-4298629.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      },
      {
        "name": "Carol",
        "dp":
            "https://images.pexels.com/photos/1580287/pexels-photo-1580287.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/14560189/pexels-photo-14560189.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      },
      {
        "name": "David",
        "dp":
            "https://images.pexels.com/photos/10588206/pexels-photo-10588206.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/9545921/pexels-photo-9545921.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: PageView.builder(
            itemCount: myUserList.length,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(myUserList[index]['bg']),
                ),
              ),
              child: Column(
                children: [
                  const Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myUserList[index]['dp']),
                    ),
                    title: Text(
                      myUserList[index]['name'],
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: const Text("Sponsered",
                        style: TextStyle(color: Colors.white)),
                    trailing: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.all(10.0),
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const Text(
                            "Send Message",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                        size: 35,
                      ),
                      const SizedBox(width: 15),
                      const Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
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
