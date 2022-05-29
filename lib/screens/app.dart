import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:musica/screens/myplaylist.dart';
import 'package:musica/screens/home.dart';
import 'package:musica/screens/search.dart';
import 'package:flutter/services.dart';

import '../models/music.dart';

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) :  super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer _audioPlayer = new AudioPlayer();
  var Tabs =[];
  int currentTabIndex = 0;
  bool isPlaying = false;

  Music? music;
  Widget miniPlayer(Music? music,{bool stop=false}){
    this.music =music;
    if(music==null){
      return SizedBox();
    }
    if(stop){
      isPlaying = false;
      _audioPlayer.stop();
    }
    setState((){});
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(duration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [ Colors.pinkAccent.shade400,Colors.pinkAccent.shade100,  Colors.cyan.shade500],)),
      width: deviceSize.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            music.image,
            fit: BoxFit.cover,),
          Text(
            music.desc,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          IconButton(onPressed: () async{
            isPlaying= !isPlaying;
            if(isPlaying){
              await _audioPlayer.play(music.audioURL);
            }
            else{
              await _audioPlayer.pause();
            }
            setState((){});
          },
              icon: isPlaying? Icon(Icons.pause,color: Colors.white,):Icon(Icons.play_arrow,color: Colors.white,))
        ],),
    );
  }

  initState(){
    super.initState();
    Tabs= [Home(miniPlayer), Search(), MyPlaylist()];
  }

  //UI Design Code goes inside build
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.cyanAccent,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(music),
          BottomNavigationBar(
              items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.pinkAccent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search', backgroundColor: Colors.pinkAccent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_music), label: 'My Playlist',backgroundColor: Colors.pinkAccent),
            ],
            selectedItemColor: Colors.cyanAccent.shade400,
            currentIndex: currentTabIndex,
            onTap: (currentIndex){
              currentTabIndex= currentIndex;
              setState((){}); //re-render
            },
            backgroundColor: Colors.pinkAccent,
          )],
      ),
    );
  }
}