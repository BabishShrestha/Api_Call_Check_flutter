import 'package:flutter/material.dart';

import '../models/api_display_model.dart';
import '../shared/constants.dart';
import '../shared/fetchapi.dart';

class ApiCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("id"),
              Text("Title"),
              Text("Status"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: FutureBuilder<List>(
              future: FetchApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemExtent: 50,
                    shrinkWrap: true,
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      Map post = snapshot.data![index];
                      return Api_Display(
                          id: post["id"],
                          title: post["title"],
                          status: post["completed"]);
                    },
                  );
                }
                return Center(
                  child: Transform.scale(
                    scale: 3,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: kAppBarColorbg,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
