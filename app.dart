import 'package:aram_app/src/screens/screen_veiw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aram_app/src/kurdish_names/screen_names/kurdish_names_list.dart';

class Apps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: KurdishNamesList(),
    );
  }


}