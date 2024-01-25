import 'package:flutter/material.dart';
import 'package:flutter_scrulls_app/custom_scroll_ve_slivers.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
      // brightness: Brightness.dark, // birghtness tüm yapıyı etkilediği için them datanın içerisinde kullanmamız gerekiyor. Gece modu olarak aklında kalsın.
    ),
    home: Scaffold(
      body: CollapsableToolbarOrnek(),
    ),
  ));
}
