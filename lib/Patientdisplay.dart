import 'package:flutter/material.dart';

import 'Patientmodel.dart';

class Patientdisplay extends StatefulWidget {
  @override
  _PatientdisplayState createState() => _PatientdisplayState();
}

class _PatientdisplayState extends State<Patientdisplay> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: patients.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                Divider(height: 15),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Color(0xFF9d86de),
                    backgroundImage: AssetImage(patients[i].avatarurl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        patients[i].firstname + ' ' + patients[i].lastname,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        patients[i].time,
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Container(
                      child: Text(patients[i].message,style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                )
              ],
            ));
  }
}
