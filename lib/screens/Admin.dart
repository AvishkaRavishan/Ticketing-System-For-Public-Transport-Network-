import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticketingsystem/screens/BusList.dart';
import 'package:ticketingsystem/screens/BusRegister.dart';

import 'QRcode.dart';
import 'QrScanner.dart';
import 'UserList.dart';

class Admin extends StatefulWidget {
  const Admin(this.vh, this.title);

  final String title;
  final String vh;

  @override
  State<Admin> createState() => _AdminState(vh);
}

class _AdminState extends State<Admin> {
  _AdminState(this.vehicle);

  String vehicle;

  @override
  Widget build(BuildContext context) {
    IconData qr_code_scanner_rounded =
    IconData(0xf00cc, fontFamily: 'MaterialIcons');
    final TextStyle textStyle = TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
    return  Scaffold(
          appBar: AppBar(
            title: Text("Admin"),
            leading: const BackButton(
              color: Colors.black, // <-- SEE HERE
            ),
            centerTitle: true,

          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(left:200),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.25,
                    height: MediaQuery.of(context).size.height * 0.25,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BusRegister()));
                },
                    child: Card(
                        elevation: 10,
                        color: Colors.white,

                        child: Center(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(

                                    child: Icon(Icons.directions_bus,
                                        size: 50.0, color: textStyle.color)),
                                Text("Register Bus", style: textStyle),





                              ]),
                        )),
                  ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.25,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => /*BusList()*/));
                      },
                    child: Card(
                        elevation: 10,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.format_list_bulleted,
                                        size: 50.0, color: textStyle.color)),
                                Text("Bus List", style: textStyle),
                              ]),
                        )),
                  ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.25,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => UserList()));
                      },
                      child: Card(
                          elevation: 10,
                          color: Colors.white,
                          child: Center(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                      child: Icon(Icons.supervised_user_circle,
                                          size: 50.0, color: Colors.black)),
                                  Text("User List", style: textStyle),
                                ]),
                          )),
                    ),
                  ),
                ],

        ),
            ),
          ));
  }
}

class SelectCard extends StatelessWidget {
  const SelectCard({required this.choice});

  final String choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
      fontSize: 24,
      color: Colors.green,
      fontWeight: FontWeight.bold,
    );
    IconData qr_code_scanner_rounded =
    IconData(0xf00cc, fontFamily: 'MaterialIcons');
    return Card(
        color: Colors.white70,
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Icon(qr_code_scanner_rounded,
                        size: 50.0, color: textStyle.color)),
                Text(choice, style: textStyle),
              ]),
        ));
  }
}

// onPressed:(){
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) =>
// BusRegister()));
// }
