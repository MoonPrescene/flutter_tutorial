import 'package:flutter/material.dart';
import 'package:flutter_application_hello_world/User.dart';

class ItemView2 extends StatelessWidget {
  final User user;

  ItemView2({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                    height: 75,
                    width: 75,
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
          ]),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    user.userName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 140,
                  child: Text(
                    "Farewell Ashen One, May The Flames Guide Thee, Farewell Ashen One, May The Flames Guide Thee, Farewell Ashen One, May The Flames Guide Thee",
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
