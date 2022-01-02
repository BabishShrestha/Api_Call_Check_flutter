import 'dart:core';

import 'package:api_fetch/shared/constants.dart';
import 'package:api_fetch/widgets/apicheck.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ApiCall());
}

class ApiCall extends StatelessWidget {
  const ApiCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kAppBarColorbg,
          foregroundColor: kAppBarColorfg,
          title: const Text('Api Call Check'),
        ),
        body: const SafeArea(
          child: ApiCheck(),
        ),
      ),
    );
  }
}
