import 'package:aram_app/src/kurdish_names/services/kurdish_names_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/names_data_model.dart';

class KurdishNamesList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<KurdishNamesList> {
 
    KurdishNamesService _namesService = KurdishNamesService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //------------------------------------------------------------------
DropdownButton<String>(
  hint: const Text("limit"),
  items: <String>['5', '10', '20', '100'].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: (val) {
    setState(() {
      _namesService.limit=val.toString();
    });
  },
),
DropdownButton<String>(
  hint: const Text("gender"),
  items: <String>['M', 'F', 'O'].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: (val) {
    setState(() {
      _namesService.gender=val.toString();
    });
  },
),
DropdownButton<String>(
  hint: const Text("sort"),
  items: <String>['positive', 'negative'].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: (val) {
    setState(() {
      _namesService.sortt=val.toString();
    });
  },
)
    


         //------------------------------------------------------------------------
              ],
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.red,
              padding: EdgeInsets.all(20),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: FutureBuilder<KurdishNames>(
                  future: _namesService.fetchListOfNames(),
                  builder: ((context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CupertinoActivityIndicator();
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    } else if (snapshot.data == null) {
                      return Text('no data');
                    }
                    return ListView.builder(
                        itemCount: snapshot.data!.names.length,
                        itemBuilder: (context, index) {
                          return ExpansionTile(
                            leading: Text(snapshot
                                .data!.names[index].positive_votes
                                .toString()),
                            title: Text(snapshot.data!.names[index].name),
                            children: [Text(snapshot.data!.names[index].desc)],
                          );
                        });
                  }),
                ),
              ),
              // child: ,
            ),
          )
        ],
      ),
    );
  }
}