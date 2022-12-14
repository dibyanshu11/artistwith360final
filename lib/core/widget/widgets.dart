import 'package:artist_replugged/core/constant/constant.dart';
import 'package:flutter/material.dart';

footer() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Divider(color: Colors.white.withOpacity(0.5)),
      Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 11),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(Icons.home, color: Colors.white, size: 30),
                      Text('Accueil',
                          style: TextStyle(color: Colors.white, fontSize: 10))
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 11),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.search,
                          color: Colors.white.withOpacity(0.8), size: 30),
                      Text('Découvrir',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 10))
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 3),
                  child: buttonplus()),
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.inbox,
                          color: Colors.white.withOpacity(0.8), size: 30),
                      Text('Boîte de réception',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 10))
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 9, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.person,
                          color: Colors.white.withOpacity(0.8), size: 30),
                      Text('Moi',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 10))
                    ],
                  )),
            ],
          ))
    ],
  );
}

buttonplus() {
  return Container(
    width: 46,
    height: 300,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.red),
    child: Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 28,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color(0x002dd3e7).withOpacity(1)),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 28,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color(0x00ed316a).withOpacity(1)),
          ),
        ),
        Center(
          child: Container(
            width: 28,
            height: 30,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white),
            child: const Center(child: Icon(Icons.add, color: Colors.black)),
          ),
        )
      ],
    ),
  );
}

buttomBar({required BottomNavigationBar child}) {
  return Container(
    padding: const EdgeInsets.only(bottom: 20),
    height: 100,
    child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/Home-Line.png',
            height: 30,
          ),
          Image.asset(
            'assets/images/Shape (1).png',
            height: 60,
          ),
          Image.asset(
            'assets/images/search (1).png',
            height: 30,
          ),
          Image.asset(
            'assets/images/Settings-Line.png',
            height: 30,
          ),
        ]),
  );
}

Duration get timeOutDurationException =>
    const Duration(seconds: ArtistConstant.second);

snackBar(BuildContext context, String text) {
ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    duration: const Duration(seconds: 1),
    action: SnackBarAction(
      label: 'ALERT',
      onPressed: () {},
    ),
  ));
}
