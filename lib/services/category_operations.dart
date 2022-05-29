import 'package:musica/models/category.dart';

class CategoryOperations{
  CategoryOperations._(){}
  static List<Category> getCategories(){
    return <Category>[
      Category('Top Songs', 'https://jjooy.files.wordpress.com/2018/11/icon-512.png'),
      Category('Taylor Swift', 'https://media.newyorker.com/photos/60747954c920e996bd1e486d/master/pass/Battan-FearlessTaylorsVersion.jpg'),
      Category('Justin Beiber', 'https://i.pinimg.com/236x/dc/59/6b/dc596b41983c4cf7bdb7c4eac29b66ba--justin-bieber-music-justin-bieber-news.jpg'),
      Category('Kishore Kumar', 'https://i.pinimg.com/564x/2f/53/60/2f53608576184ed3d61377380f915e14.jpg'),
      Category('Mornings', 'https://i.pinimg.com/originals/1e/48/79/1e4879e068d2d60fa87594e2cfb842bd.jpg'),
      Category('Selena Gomez', 'https://i.pinimg.com/474x/18/cf/2b/18cf2b1fa830033469051a798371b8d4.jpg'),
    ];
  }
}