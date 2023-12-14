import 'package:flutter/material.dart';
import 'package:hungry_hub_2/view/main_tabview/main_tabview.dart';
import 'package:hungry_hub_2/view/on_boarding/startup_view.dart';
import 'dart:io';
import 'package:dotenv/dotenv.dart';
void main() {
   var env = DotEnv(includePlatformEnvironment: true)..load();
  // Access the protected variable directly
  String? apiKey = env['API_KEY'];
  
  // Use apiKey in your API calls
  debugPrint('API Key: $apiKey');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
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
        //useMaterial3: true,
      ),
      home: const StartupView(),
    );
  }
}
