import 'package:flutter/material.dart';
import 'package:google_translate/google_translate.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const GoogleTranslate(
    apiKey: "AIzaSyDgh0dvmvj4yLGMa4JCJOQURs_KdLqGecw",
    sourceLanguage: "en",
    targetLanguage: "it",
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Flutter Demo Home Page';

  @override
  void initState() {
    title.translate().then((value) {
      setState(() {
        title = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}