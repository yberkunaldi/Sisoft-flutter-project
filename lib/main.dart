import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Ana Sayfa';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: appTitle),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[200],
          title: Text(widget.title),
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Yönetim',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.accessibility_rounded),
                title: const Text('BİREY'),
                onTap: () => {
                  Navigator.of(context).pop(),
                },
              ),
              ListTile(
                leading: const Icon(Icons.sticky_note_2_sharp),
                title: const Text('AJANDA'),
                onTap: () => {
                  Navigator.of(context).pop(),
                },
              ),
              ExpansionTile(
                  leading: const Icon(Icons.app_registration),
                  title: const Text('YÖNETİM'),
                  children: <Widget>[
                    ListTile(
                        leading: const Icon(Icons.build_sharp),
                        title: const Text('KAYNAK YÖNETİMİ'),
                        onTap: () => {
                              Navigator.of(context).pop(),
                            }),
                    ListTile(
                        leading: const Icon(Icons.zoom_in_map_rounded),
                        title: const Text('KARAR DESTEK'),
                        onTap: () => {
                              Navigator.of(context).pop(),
                            }),
                    ListTile(
                        leading: const Icon(Icons.phone_iphone_outlined),
                        title: const Text('SMS BİLDİRİM'),
                        onTap: () => {Navigator.of(context).pop()}),
                    ListTile(
                        leading: const Icon(Icons.assignment_ind),
                        title: const Text('BİREY İŞLEMLERİ'),
                        onTap: () => {Navigator.of(context).pop()}),
                    ListTile(
                        leading: const Icon(Icons.settings),
                        title: const Text('AYARLAR'),
                        onTap: () => {Navigator.of(context).pop()}),
                    ListTile(
                        leading: const Icon(Icons.zoom_in_outlined),
                        title: const Text('TETKİK İŞLEMLERİ'),
                        onTap: () => {Navigator.of(context).pop()}),
                    ListTile(
                        leading: const Icon(Icons.assignment_return_sharp),
                        title: const Text('VERİ AKTARIMI'),
                        onTap: () => {Navigator.of(context).pop()}),
                  ]),
              ListTile(
                leading: const Icon(Icons.zoom_in_map_rounded),
                title: const Text('İŞLEMLER'),
                onTap: () => {
                  Navigator.of(context).pop(),
                },
              ),
              ListTile(
                leading: const Icon(Icons.people_alt_rounded),
                title: const Text('USS KARAR DESTEK'),
                onTap: () => {
                  Navigator.of(context).pop(),
                },
              ),
              ListTile(
                leading: const Icon(Icons.people_alt_sharp),
                title: const Text('MUAYENEYİ BİTİR'),
                onTap: () => {
                  Navigator.of(context).pop(),
                },
              ),
            ],
          ),
        ));
  }
}
