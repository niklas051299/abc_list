import 'package:flutter/material.dart';
import 'dbhelper.dart';
import 'ListDetailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ABC-Liste', theme: ThemeData.dark(), home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // alle Listen initialisieren
  List<Map<String, dynamic>> _lists = [];

  // "aktualisieren"/holen der Listen
  void _refreshLists() async {
    final data = await SQLHelper.getLists();
    setState(() {
      _lists = data;
    });
  }

  // Laden der Listen beim Start der App
  @override
  void initState() {
    super.initState();
    _refreshLists();
  }

  //Controller für Titel und alle Buchstaben
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _aController = TextEditingController();
  final TextEditingController _bController = TextEditingController();
  final TextEditingController _cController = TextEditingController();
  final TextEditingController _dController = TextEditingController();
  final TextEditingController _eController = TextEditingController();
  final TextEditingController _fController = TextEditingController();
  final TextEditingController _gController = TextEditingController();
  final TextEditingController _hController = TextEditingController();
  final TextEditingController _iController = TextEditingController();
  final TextEditingController _jController = TextEditingController();
  final TextEditingController _kController = TextEditingController();
  final TextEditingController _lController = TextEditingController();
  final TextEditingController _mController = TextEditingController();
  final TextEditingController _nController = TextEditingController();
  final TextEditingController _oController = TextEditingController();
  final TextEditingController _pController = TextEditingController();
  final TextEditingController _qController = TextEditingController();
  final TextEditingController _rController = TextEditingController();
  final TextEditingController _sController = TextEditingController();
  final TextEditingController _tController = TextEditingController();
  final TextEditingController _uController = TextEditingController();
  final TextEditingController _vController = TextEditingController();
  final TextEditingController _wController = TextEditingController();
  final TextEditingController _xController = TextEditingController();
  final TextEditingController _yController = TextEditingController();
  final TextEditingController _zController = TextEditingController();

//Ausgabe des Formulars
  Future<void> _showForm(int? id) async {
    //Abfrage, ob Liste bereits existiert
    if (id != null) {
      //laden der vorhandenen Inhalte der Liste
      final existingLists = _lists.firstWhere((element) => element['id'] == id);
      _titleController.text = existingLists['title'];
      _aController.text = existingLists['a'];
      _bController.text = existingLists['b'];
      _cController.text = existingLists['c'];
      _dController.text = existingLists['d'];
      _eController.text = existingLists['e'];
      _fController.text = existingLists['f'];
      _gController.text = existingLists['g'];
      _hController.text = existingLists['h'];
      _iController.text = existingLists['i'];
      _jController.text = existingLists['j'];
      _kController.text = existingLists['k'];
      _lController.text = existingLists['l'];
      _mController.text = existingLists['m'];
      _nController.text = existingLists['n'];
      _oController.text = existingLists['o'];
      _pController.text = existingLists['p'];
      _qController.text = existingLists['q'];
      _rController.text = existingLists['r'];
      _sController.text = existingLists['s'];
      _tController.text = existingLists['t'];
      _uController.text = existingLists['u'];
      _vController.text = existingLists['v'];
      _wController.text = existingLists['w'];
      _xController.text = existingLists['x'];
      _yController.text = existingLists['y'];
      _zController.text = existingLists['z'];
    }

    //Aufbau Formular zum Erstellen und Bearbeiten
    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
              padding: EdgeInsets.only(
                top: 50,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 10,
              ),
              //Textfelder mit Eingabe für die einzelnen Buchstaben
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      controller: _titleController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Title',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _aController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'A',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _bController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'B',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _cController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'C',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _dController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'D',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _eController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'E',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _fController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'F',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _gController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'G',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _hController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'H',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _iController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'I',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _jController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'J',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _kController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'K',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _lController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'L',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _mController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'M',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _nController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'N',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _oController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'O',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _pController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'P',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _qController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Q',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _rController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'R',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _sController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'S',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _tController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'T',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _uController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'U',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _vController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'V',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _wController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'W',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _xController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'X',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _yController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Y',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _zController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Z',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Button, speichern/erstellen
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 7,
                        primary: const Color(0xFFFFD700),
                        onPrimary: Colors.black87,
                      ),
                      onPressed: () async {
                        // Liste hinzufügen, falls die id noch nicht vorhanden (null) ist
                        if (id == null) {
                          await _addList();
                        }
                        //Liste updaten, falls die id vorhanden (ungleich null) ist
                        if (id != null) {
                          await _updateList(id);
                        }

                        //leeren der Textfelder
                        _titleController.text = '';
                        _aController.text = '';
                        _bController.text = '';
                        _cController.text = '';
                        _dController.text = '';
                        _eController.text = '';
                        _fController.text = '';
                        _gController.text = '';
                        _hController.text = '';
                        _iController.text = '';
                        _jController.text = '';
                        _kController.text = '';
                        _lController.text = '';
                        _mController.text = '';
                        _nController.text = '';
                        _oController.text = '';
                        _pController.text = '';
                        _qController.text = '';
                        _rController.text = '';
                        _sController.text = '';
                        _tController.text = '';
                        _uController.text = '';
                        _vController.text = '';
                        _wController.text = '';
                        _xController.text = '';
                        _yController.text = '';
                        _zController.text = '';

                        Navigator.of(context).pop();
                      },
                      //Abfrage, welcher Text der Button anzeigt (wenn die id null ist, wird eine neue liste erstellt --> "create new"
                      child: Text(id == null ? 'Create New' : 'Update'),
                    )
                  ],
                ),
              ),
            ));
  }

// Neue Liste zur Datenbank hinzufügen
  Future<void> _addList() async {
    //Liste erstellen mit den EInträgen der Controller
    await SQLHelper.createList(
        _titleController.text,
        _aController.text,
        _bController.text,
        _cController.text,
        _dController.text,
        _eController.text,
        _fController.text,
        _gController.text,
        _hController.text,
        _iController.text,
        _jController.text,
        _kController.text,
        _lController.text,
        _mController.text,
        _nController.text,
        _oController.text,
        _pController.text,
        _qController.text,
        _rController.text,
        _sController.text,
        _tController.text,
        _uController.text,
        _vController.text,
        _wController.text,
        _xController.text,
        _yController.text,
        _zController.text);
    _refreshLists();
  }

// Liste updaten
  Future<void> _updateList(int id) async {
    //Liste mit ausgewählter id updaten
    await SQLHelper.updateList(
        id,
        _titleController.text,
        _aController.text,
        _bController.text,
        _cController.text,
        _dController.text,
        _eController.text,
        _fController.text,
        _gController.text,
        _hController.text,
        _iController.text,
        _jController.text,
        _kController.text,
        _lController.text,
        _mController.text,
        _nController.text,
        _oController.text,
        _pController.text,
        _qController.text,
        _rController.text,
        _sController.text,
        _tController.text,
        _uController.text,
        _vController.text,
        _wController.text,
        _xController.text,
        _yController.text,
        _zController.text);
    _refreshLists();
  }

// Liste löschen
  void _deleteList(int id) async {#
    //Liste mit der ausgewählten id löschen
    await; SQLHelper.deleteList(id);
    //SnackBar anzeige mit der Nachricht, dass die Liste erfolgreich gelöscht wurde
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Successfully deleted a list!'),
    ));
    _refreshLists();
  }

  //Anzeige der Abfrage, ob Liste wirklich gelöscht werden soll
  void _deleteItemConfirmation(int id) async {
    //Dialogbox mit Abfrage
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            backgroundColor: const Color(0xFF022C43),
            title: const Text('Please Confirm'),
            content: const Text('Are you sure to delete the list?'),
            actions: [
              TextButton(
                  onPressed: () {
                    _deleteList(id);
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    primary: Color(0xFFFFD700), // Text Color
                  ),
                  child: const Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    primary: Color(0xFFFFD700), // Text Color
                  ),
                  child: const Text('No'))
            ],
          );
        });
  }

  //Aufruf der Listen-Detailseite durch drücken auf die jeweilige card
  void _listTap(BuildContext context, int index) async {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ListDetailPage(_lists[index]['id'])));
  }

  //Aufbau der Listenanzeige
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(title: const Text('ABC-Liste'), actions: <Widget>[
        IconButton(
          iconSize: 35,
          tooltip: "Add List",
          icon: const Icon(
            Icons.playlist_add,
            color: Color(0xFFFFD700),
          ),
          onPressed: () => _showForm(null),
        ),
      ]),
      body: ListView.builder(
              itemCount: _lists.length,
              itemBuilder: (context, index) => Card(
                color: const Color(0xFF4D4C7D),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                shadowColor: Colors.white54,
                margin: const EdgeInsets.all(12),
                child: ListTile(
                    title: Text(_lists[index]['title']),
                    onTap: () => _listTap(context, index),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          //Bearbeiten Button
                          IconButton(
                            tooltip: "Edit List",
                            icon: const Icon(Icons.edit),
                            onPressed: () => _showForm(_lists[index]['id']),
                          ),
                          //Löschen Button
                          IconButton(
                            tooltip: "Delete List",
                            icon: const Icon(Icons.delete),
                            onPressed: () =>
                                _deleteItemConfirmation(_lists[index]['id']),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
    );
  }
}
