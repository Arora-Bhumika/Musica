import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      "Search",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 48.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search,color: Colors.black,size: 28.0,),
                        filled: true,
                        border: InputBorder.none,
                        hintText: "Find your music",
                      ),
                    controller: _controller,
                    onChanged: (String value)
                    {

                    },),
                  ),
                  Expanded(
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(5),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
                            child: const Text("Pop Music",style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0
                            ),),
                            color: Colors.deepOrange,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
                            child: const Text("Rock",style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0
                            ),),
                            color: Colors.deepPurple,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
                            child: const Text("Hip Hop",style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0
                            ),),
                            color: Colors.blueAccent,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
                            child: const Text("Jazz",style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0
                            ),),
                            color: Colors.amber,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
                            child: const Text("House",style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0
                            ),),
                            color: Colors.green,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
                            child: const Text("Reggae",style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0
                            ),),
                            color: Colors.red,
                          ),
                        ),

                      ],
                    ),
                  )

                ],
              ),

            )

        ),
      decoration: BoxDecoration(
      gradient: LinearGradient(colors: [ Colors.cyanAccent.shade100,Colors.cyanAccent.shade700,Colors.cyanAccent.shade700, Colors.cyan.shade900],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight)),

      ),
    );

  }
}