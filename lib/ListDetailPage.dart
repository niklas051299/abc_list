import 'package:flutter/material.dart';
import 'dbhelper.dart';

class ListDetailPage extends StatefulWidget {
  final int id;

  const ListDetailPage(this.id, {Key? key}) : super(key: key);

  @override
  _ListDetailPageState createState() => _ListDetailPageState(id);
}

class _ListDetailPageState extends State<ListDetailPage> {
  final int id;

  _ListDetailPageState(this.id);

  List<Map<String, dynamic>> _lists = [];

  // "aktualisieren" der Listen
  void _refreshLists() async {
    //holen der Liste
    final data = await SQLHelper.getList(id);
    setState(() {
      _lists = data;
    });
  }

  // laden der Listen beim Start der App
  @override
  void initState() {
    super.initState();
    _refreshLists();
  }

  //Aufbau der Ausgabe aller Buchstaben einer Liste
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_lists[0]['title']),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            //Ausgabe in Tabellenform
            child: Table(
              columnWidths: const {
                0: FixedColumnWidth(70),
                1: FixedColumnWidth(500),
              },
              children: [
                //je Reihe, Buchstabe und Wort
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text(
                        "A",
                        textScaleFactor: 1.5,
                      ),
                      Text(_lists[0]['a'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("B", textScaleFactor: 1.5),
                      Text(_lists[0]['b'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text("C", textScaleFactor: 1.5),
                      Text(_lists[0]['c'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("D", textScaleFactor: 1.5),
                      Text(_lists[0]['d'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text("E", textScaleFactor: 1.5),
                      Text(_lists[0]['e'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("F", textScaleFactor: 1.5),
                      Text(_lists[0]['f'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text("G", textScaleFactor: 1.5),
                      Text(_lists[0]['g'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("H", textScaleFactor: 1.5),
                      Text(_lists[0]['h'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text("I", textScaleFactor: 1.5),
                      Text(_lists[0]['i'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("J", textScaleFactor: 1.5),
                      Text(_lists[0]['j'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text("K", textScaleFactor: 1.5),
                      Text(_lists[0]['k'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("L", textScaleFactor: 1.5),
                      Text(_lists[0]['l'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text("M", textScaleFactor: 1.5),
                      Text(_lists[0]['m'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("N", textScaleFactor: 1.5),
                      Text(_lists[0]['n'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text("O", textScaleFactor: 1.5),
                      Text(_lists[0]['o'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("P", textScaleFactor: 1.5),
                      Text(_lists[0]['p'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text("Q", textScaleFactor: 1.5),
                      Text(_lists[0]['q'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("R", textScaleFactor: 1.5),
                      Text(_lists[0]['r'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text("S", textScaleFactor: 1.5),
                      Text(_lists[0]['s'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("T", textScaleFactor: 1.5),
                      Text(_lists[0]['t'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text("U", textScaleFactor: 1.5),
                      Text(_lists[0]['u'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("V", textScaleFactor: 1.5),
                      Text(_lists[0]['v'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text("W", textScaleFactor: 1.5),
                      Text(_lists[0]['w'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("X", textScaleFactor: 1.5),
                      Text(_lists[0]['x'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x554D4C7D)),
                    children: [
                      const Text("Y", textScaleFactor: 1.5),
                      Text(_lists[0]['y'], textScaleFactor: 1.5),
                    ]),
                TableRow(
                    decoration: const BoxDecoration(color: Color(0x55333253)),
                    children: [
                      const Text("Z", textScaleFactor: 1.5),
                      Text(_lists[0]['z'], textScaleFactor: 1.5),
                    ]),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
