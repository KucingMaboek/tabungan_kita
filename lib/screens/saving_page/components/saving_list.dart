import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tabungan_kita/screens/saving_details/saving_details_screen.dart';

class SavingList extends StatefulWidget{
  @override
  _SavingListState createState() => _SavingListState();
}

class _SavingListState extends State<SavingList>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
            title: Text('Bulan ke-$index, 2020'),
            subtitle: Text('Terbayar'),
            leading: FaIcon(FontAwesomeIcons.receipt),
            // trailing: Icon(Icons.keyboard_arrow_right),
            trailing: Text('Rp.200.000,-'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SavingDetail(index)));
            },
          ),
        );
      },
    );
  }
}