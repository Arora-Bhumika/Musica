import '../models/music.dart';

class MusicOperations{
  MusicOperations._() {}
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'Netflix-To all the boys',
          'https://a10.gaanacdn.com/gn_img/albums/kGxbnw0Ky4/xbnwwQJlKy/size_l.jpg',
          'Beginning Middle End',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/f1/7e/a7/f17ea720-fee7-4d25-3f06-2222074ecf5e/mzaf_5235824539777138383.plus.aac.p.m4a'
      ),
      Music(
          'Shawn Mendes',
          'https://static.onecms.io/wp-content/uploads/sites/6/2018/05/sm-press-photo-brianziff-2017-2000.jpg',
          'Treat You Better',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/67/ff/d2/67ffd25f-3681-d9ca-5b80-3854aeadf828/mzaf_4819257032956336911.plus.aac.p.m4a'
      ),
      Music(
          'James Arthur',
          'https://upload.wikimedia.org/wikipedia/en/thumb/9/96/One_direction_up_all_night_albumcover.jpg/220px-One_direction_up_all_night_albumcover.jpg',
          'Say You Wont Let Go',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/d4/dc/f2/d4dcf262-2a25-2bd8-9c87-68e7b869d2dd/mzaf_6043261764908168949.plus.aac.p.m4a'
      ),
      Music(
          'Koni',
          'https://m.media-amazon.com/images/I/8117iL2L-bL._SS500_.jpg',
          'Out Of Love',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/9d/fd/6a/9dfd6a7a-4d3a-9281-80aa-21277faaa829/mzaf_13650233675758043477.plus.aac.p.m4a'),
    ];
  }
}