import '../models/album.dart';

class AlbumOperations{
  AlbumOperations._() {}
  static List<Album> getMusic() {
    return <Album>[
      Album(
          'BTS',
          'https://i.pinimg.com/280x280_RS/e5/e9/c6/e5e9c6a69ed2ff97c3cf1753ab480917.jpg',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/ff/47/17/ff47179a-2386-73b7-6328-02b0b6289c03/mzaf_3171712905355018662.plus.aac.p.m4a'
      ),
      Album(
          'The Local Train',
          'https://res.cloudinary.com/dwzmsvp7f/image/fetch/q_75,f_auto,w_800/https%3A%2F%2Fmedia.insider.in%2Fimage%2Fupload%2Fc_crop%2Cg_custom%2Fv1558445203%2Fsw5nukjr9lqjqbnxfzeu.jpg',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/99/aa/f4/99aaf442-7c7c-963e-a694-e56fd6404dcc/mzaf_8703553809502529212.plus.aac.p.m4a'
      ),
      Album(
          'One Direction',
          'https://upload.wikimedia.org/wikipedia/en/thumb/9/96/One_direction_up_all_night_albumcover.jpg/220px-One_direction_up_all_night_albumcover.jpg',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/53/e1/20/53e12003-c0f3-93ed-1fa2-9ae052b531cc/mzaf_13267928842320944875.plus.aac.p.m4a'
      ),
      Album(
          'Black Pink',
          'https://i.pinimg.com/280x280_RS/45/73/9d/45739da4951edfc6973f383aebd93549.jpg',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2f/40/37/2f4037e5-bdde-d23c-e537-aed8e46ecf26/mzaf_3632930303065687777.plus.aac.p.m4a')
    ];
  }
}