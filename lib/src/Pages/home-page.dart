import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petsapp/src/widgets/menu-widget.dart';

import 'Amigos-page.dart';

class HomePage extends StatelessWidget {

  HomePage() { log('entrou');}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Pets'),
      ),
      drawer: MenuWidget(),
      body: AmizadePage(),
    );
  }
}