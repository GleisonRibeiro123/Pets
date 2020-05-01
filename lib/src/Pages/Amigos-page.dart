import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/components/list_tile/gf_list_tile.dart';
import 'package:petsapp/src/Pages/solicitacao-amizade-page.dart';
import 'package:petsapp/src/widgets/menu-widget.dart';

class AmizadePage extends StatefulWidget {
  @override
  _AmizadePage createState() => _AmizadePage();
}

class _AmizadePage extends State<AmizadePage> {
  
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static const List<Widget> _widgetOptions = <Widget>[
  Text(
    'Index 0: Amigos',
    style: optionStyle,
  ),
  Text(
     'Index 1: Solicitações de amizade',
     style: optionStyle,
  )
];
  void _onItemTapped(int index) {
    log('$index');
    setState(() {
      _selectedIndex = index;
    });
    if(index == 1){
        Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
        title: new Text('Solicitações de amizade'),
      ),
      drawer: MenuWidget(),
      body: SolicitacaoAmizadePage(),
      );
    }));
    } else {
      Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
        title: new Text('Amigos'),
      ),
      drawer: MenuWidget(),
      body: AmizadePage(),
      );
    }));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Column(
        children: [
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  
                },
                decoration: InputDecoration(
                    labelText: "Amigo",
                    hintText: "Buscar",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              
              )
            ),
          Expanded(
            child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              GFListTile(
                avatar:GFAvatar(
                  backgroundImage: AssetImage(
                    "assets/gleison.jpg"
                  ),
                ),
                titleText:'Gabriel Vinicius',
                subtitleText:'10 amigos em comum',
                icon: Icon(Icons.more_horiz)
              ),
              GFListTile(
                avatar:GFAvatar(
                  backgroundImage: AssetImage(
                    "assets/gleison.jpg"
                  ),
                ),
                titleText:'Gabriel Vinicius',
                subtitleText:'10 amigos em comum',
                icon: Icon(Icons.more_horiz)
              ),
              GFListTile(
                avatar:GFAvatar(
                  backgroundImage: AssetImage(
                    "assets/gleison.jpg"
                  ),
                ),
                titleText:'Gabriel Vinicius',
                subtitleText:'10 amigos em comum',
                icon: Icon(Icons.more_horiz)
              ),
              GFListTile(
                avatar:GFAvatar(
                  backgroundImage: AssetImage(
                    "assets/gleison.jpg"
                  ),
                ),
                titleText:'Gabriel Vinicius',
                subtitleText:'10 amigos em comum',
                icon: Icon(Icons.more_horiz)
              ),
              GFListTile(
                avatar:GFAvatar(
                  backgroundImage: AssetImage(
                    "assets/gleison.jpg"
                  ),
                ),
                titleText:'Gabriel Vinicius',
                subtitleText:'10 amigos em comum',
                icon: Icon(Icons.more_horiz)
              ),
              GFListTile(
                avatar:GFAvatar(
                  backgroundImage: AssetImage(
                    "assets/gleison.jpg"
                  ),
                ),
                titleText:'Gabriel Vinicius',
                subtitleText:'10 amigos em comum',
                icon: Icon(Icons.more_horiz)
              ),
              GFListTile(
                avatar:GFAvatar(
                  backgroundImage: AssetImage(
                    "assets/gleison.jpg"
                  ),
                ),
                titleText:'Gabriel Vinicius',
                subtitleText:'10 amigos em comum',
                icon: Icon(Icons.more_horiz)
              ),
              GFListTile(
                avatar:GFAvatar(
                  backgroundImage: AssetImage(
                    "assets/gleison.jpg"
                  ),
                ),
                titleText:'Gabriel Vinicius',
                subtitleText:'10 amigos em comum',
                icon: Icon(Icons.more_horiz)
              ),
              GFListTile(
                avatar:GFAvatar(
                  backgroundImage: AssetImage(
                    "assets/gleison.jpg"
                  ),
                ),
                titleText:'Gabriel Vinicius',
                subtitleText:'10 amigos em comum',
                icon: Icon(Icons.more_horiz)
              ),
              GFListTile(
                avatar:GFAvatar(
                  backgroundImage: AssetImage(
                    "assets/gleison.jpg"
                  ),
                ),
                titleText:'Gabriel Vinicius',
                subtitleText:'10 amigos em comum',
                icon: Icon(Icons.more_horiz)
              ),
            ],
          ))          
       
        ])
      ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          title: Text('Amigos'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.recent_actors),
          title: Text('Solicitacões de amizade'),
        ),
      ],
      currentIndex: 0,
      onTap: _onItemTapped,
    )
    );
  }
}