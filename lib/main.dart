import 'dart:core';

import 'package:api_fetch/shared/constants.dart';
import 'package:api_fetch/widgets/apicheck.dart';
import 'package:flutter/materiaelessWidget {
  const ApiCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kAppBarColorbg,
          foregroundColor: kAppBarColorfg,
          title: Text('Api Call Check'),
        ),
        body: SafeArea(
          child: ApiCheck(),
        ),
      ),
    );
  }
}
