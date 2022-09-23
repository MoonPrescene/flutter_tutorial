import 'package:flutter/material.dart';
import 'package:flutter_application_hello_world/User.dart';

class ItemView extends StatelessWidget {
  final User user;

  ItemView({required this.user});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 10, right: 5),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                          height: 72,
                          width: 72,
                          child: ClipOval(
                            child: Image(
                              image: NetworkImage(user.userImage),
                              width: 72,
                              height: 72,
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 58,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                          border:
                              Border.all(color: Colors.transparent, width: 3)),
                    ),
                  )
                ],
              ),
              Text(user.userName)
            ],
          ),
        ),
      ],
    );
  }
}
