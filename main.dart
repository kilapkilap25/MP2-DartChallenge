import 'dart:math';

// Song class
class Song {
  String title;
  String artist;
  double duration; // duration in minutes

  Song(this.title, this.artist, this.duration);

  // Display song details
  void play() {
    print('\tPlaying "$title" by $artist ($duration mins)');
  }
}

// Playlist class
class Playlist {
  String name;
  List<Song> songs;

  Playlist(this.name) : songs = [];

  // Add a song to the playlist
  void addSong(Song song) {
    songs.add(song);
    print('\tAdded "${song.title}" to $name playlist.');
  }

  // Shuffle the playlist
  void shuffle() {
    songs.shuffle(Random()); // Randomizer
    print('$name playlist shuffled.');
  }

  // Display playlist details
  void playAll() {
    print('\t\nPlaying $name playlist:');
    for (var song in songs) {
      song.play();
    }
  }
}

// MusicFestival class
class MusicFestival {
  String name;
  List<Playlist> stages;

  MusicFestival(this.name) : stages = [];

  // Add a stage (playlist) to the festival
  void addStage(Playlist stage) {
    stages.add(stage);
    print('\tAdded stage "${stage.name}" to $name festival.');
  }

  // Display festival details
  void startFestival() {
    print('\nWelcome to the $name Music Festival!');
    for (var stage in stages) {
      stage.playAll();
    }
  }
}

void main() {
  print('Welcome to the Music Festival Playlist Manager!');

  // Create some songs
  var song1 = Song('Kundiman', 'Silent Sanctuary', 3.5);
  var song2 = Song('Para sa Streets', 'Hev Abi', 4.0);
  var song3 = Song('Materyal', 'Shanti Dope', 5.0);
  var song4 = Song('Stupid Love', 'Andrew E.', 2.5);
  var song5 = Song('Ngayung Gabi', 'Al James', 3.0);

  // Create playlists (stages)
  var rockStage = Playlist('Rock Stage');
  var popStage = Playlist('Pop Stage');
  var classicStage = Playlist('Classic Stage');

  // Add songs to playlists
  rockStage.addSong(song1);
  rockStage.addSong(song2);
  popStage.addSong(song3);
  popStage.addSong(song4);
  classicStage.addSong(song5);
  classicStage.addSong(song1);

  print('');

  // Shuffle playlists
  rockStage.shuffle();
  popStage.shuffle();
  classicStage.shuffle();

  // Create a music festival
  var festival = MusicFestival('October Fest');

  // Add stages to the festival
  festival.addStage(rockStage);
  festival.addStage(popStage);
  festival.addStage(classicStage);

  // Start the festival
  festival.startFestival();
}
