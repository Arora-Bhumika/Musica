import 'package:flutter/material.dart';
import 'package:musica/models/album.dart';
import 'package:musica/models/category.dart';
import 'package:musica/services/category_operations.dart';
import 'package:musica/services/music_operations.dart';
import '../models/music.dart';
import '../services/album_operations.dart';

class Home extends StatelessWidget{
  Function _miniPlayer;
  Home(this._miniPlayer); // Dart Constructor shorthand
  //const Home({Key? key}) :  super(key: key);
  Widget createCategory(Category category){
    return Container(
      color: Colors.pinkAccent,
      child: Row(
        children: [
          Image.network(category.imageURL, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              category.name, style: TextStyle(color: Colors.cyanAccent),),)
        ],
      ),
    );
  }
  List<Widget> createListOfCategories(){
    List<Category> categoryList = CategoryOperations.getCategories(); //Recieve Data
    //Convert data to widget using map function
    List<Widget> categories = categoryList.map((Category category)=>createCategory(category)).toList();
    return categories;
  }

  Widget createMusic(Music music){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: 180,
            child: InkWell(
              onTap: (){
                _miniPlayer(music,stop:true);
              },
              child: Image.network(
                music.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(music.name, style: TextStyle(color: Colors.white, ),),
          Text(music.desc, style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }

  Widget createAlbum(Album album){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: 180,
            child: InkWell(
              onTap: (){
                _miniPlayer(album,stop:true);
              },
              child: Image.network(
                album.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(album.name, style: TextStyle(color: Colors.white, ),),
        ],
      ),
    );
  }


  Widget createMusicList(String label){
    List<Music> musicList = MusicOperations.getMusic();
    return Padding(
      padding: EdgeInsets.only(left:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label, style: TextStyle(color: Colors.pinkAccent.shade400, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            height:240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index){
                return createMusic(musicList[index]);
              },
              itemCount: musicList.length,
            ),
          )],
      ),
    );
  }

  Widget createAlbumList(String label){
    List<Album> albumList = AlbumOperations.getMusic();
    return Padding(
      padding: EdgeInsets.only(left:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label, style: TextStyle(color: Colors.pinkAccent.shade400, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            height:240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index){
                return createAlbum(albumList[index]);
              },
              itemCount: albumList.length,
            ),
          )],
      ),
    );
  }


  Widget createGrid(){
    return Container(
      padding: EdgeInsets.all(5),
      height: 245,
      child: GridView.count(
        childAspectRatio: 5/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: createListOfCategories(),
        crossAxisCount: 2,
      ),
    );
  }


  Widget createAppBar(String message){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message, style: TextStyle(color: Colors.pinkAccent),),
      actions: [Padding(
          padding: EdgeInsets.only(right :10),
          child: Icon(Icons.settings, color: Colors.pinkAccent))],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
            child: Column(
              children: [
                createAppBar('Good morning'),
                SizedBox(
                  height: 5,
                ),
                createGrid(),
                createMusicList('Frequently Played'),
                createAlbumList('Favorite Bands')
              ],
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [ Colors.cyanAccent.shade100,Colors.cyanAccent.shade700, Colors.cyan.shade900],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)
            ),
          )
      ),
    );
  }
}
