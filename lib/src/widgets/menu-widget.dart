import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/components/drawer/gf_drawer.dart';
import 'package:getflutter/components/drawer/gf_drawer_header.dart';
import 'package:getflutter/getflutter.dart';

class MenuWidget extends StatefulWidget{

  MenuWidget();

  @override
  _MenuWidgetState createState() => new _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {

  @override
  Widget build(BuildContext context) {

 GFDrawer drawer = new GFDrawer(
   elevation: 40.0,
  child: ListView(
    
    padding: EdgeInsets.zero,   
    children: <Widget>[
      GFDrawerHeader(
        decoration: BoxDecoration(
          color: Colors.pink,
          image: DecorationImage(
            image: AssetImage(
                'assets/cao.jpg',
              ),
              fit: BoxFit.cover
          )
        ),
              currentAccountPicture: GFAvatar(
                radius: 80.0,
                backgroundImage: AssetImage(
                'assets/gleison.jpg',
              )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Gleison Ribeiro'),
                  Text('gleison423200@gmail.com'),
                ],
              ),
      ),
      ListTile(
        leading: Icon(Icons.rss_feed),
        title: Text('Feed'),
        subtitle: Text('Veja as novidades'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          debugPrint('toquei no drawer');
          }
      ),
      ListTile(
        leading: Icon(Icons.pets),
        title: Text('Meus pets'),
        subtitle: Text('Confira sua lista de pets'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          debugPrint('toquei no drawer');
          }
      ),
        ListTile(
        leading: Icon(Icons.people),
        title: Text('Meus amigos'),
        subtitle: Text('Confira sua lista de amigos'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          debugPrint('toquei no drawer');
          }
      ),
      ListTile(
        leading: Icon(Icons.group),
        title: Text('Grupos'),
        subtitle: Text('Em breve...'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          debugPrint('toquei no drawer');
          }
      ),
        ListTile(
        leading: Icon(Icons.local_parking),
        title: Text('Encontros'),
        subtitle: Text('Em breve...'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          debugPrint('toquei no drawer');
          }
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Minhas configurações'),
        subtitle: Text('Configure seus aplicativo'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          debugPrint('toquei no drawer');
          }
      ),
      ListTile(
        leading: Icon(Icons.exit_to_app),
        title: Text('Sair'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          debugPrint('toquei no drawer');
          }
      ),
    ],
  ),
);

    return drawer;
  }
}