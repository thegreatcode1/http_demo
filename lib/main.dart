import 'package:flutter/material.dart';
import 'package:http_demo/ophttp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: requestscreen(),
    );
  }
}

class requestscreen extends StatefulWidget {
  requestscreen({super.key});

  @override
  State<requestscreen> createState() => _requestscreenState();
}

class _requestscreenState extends State<requestscreen> {
  final _numberfact = TextEditingController();

  String String1="type number and press";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _numberfact,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  label: Text("enter a number"),
                  floatingLabelBehavior: FloatingLabelBehavior.always),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async{
                final _number = _numberfact.text;
                final _num = int.parse(_number);
                final _result=await getmunberfact(number: _num);
                //print(_result.triviatext);
                setState(() {
                  String1=_result.triviatext??"not found any text";
                });
              },
              child: const Text('request'),
            ),
            Text(String1),
          ],
        ),
      ),
    );
  }
}
