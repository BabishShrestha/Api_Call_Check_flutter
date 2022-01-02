import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Api_Display extends StatelessWidget {
  final int? id;
  final String? title;
  final bool? status;
  Api_Display({this.id, this.title, this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.05,
      child: Column(
        children: [
          Row(
            children: [
              Text(id.toString()),
              SizedBox(
                width: 20,
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Text(title!),
              ),
              SizedBox(
                width: 20,
              ),
              Text(status!.toString())
            ],
          )
        ],
      ),
    );
  }
}
