import 'package:flutter/material.dart';
import 'detail_film_screen.dart';

class DaftarFilmScreen extends StatelessWidget {
  final List<Map<String, String>> filmList = [
    {
      "judul": "Avengers",
      "gambar":
          "https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg",
      "deskripsi": "Film superhero Marvel melawan Thanos.",
    },

    {
      "judul": "Batman",
      "gambar": "https://upload.wikimedia.org/wikipedia/id/8/8a/Dark_Knight.jpg",
      "deskripsi": "Bruce Wayne melawan kriminal Gotham.",
    },

    {
      "judul": "Joker",
      "gambar":
          "https://upload.wikimedia.org/wikipedia/en/e/e1/Joker_%282019_film%29_poster.jpg",
      "deskripsi": "Perjalanan Arthur Fleck menjadi Joker.",
    },

    {
      "judul": "Interstellar",
      "gambar":
          "https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg",
      "deskripsi": "Misi luar angkasa menyelamatkan manusia.",
    },

    {
      "judul": "Inception",
      "gambar":
          "https://upload.wikimedia.org/wikipedia/id/9/91/Inception_poster.jpg",
      "deskripsi": "Masuk ke dalam mimpi manusia.",
    },

    {
      "judul": "Spiderman",
      "gambar":
          "https://upload.wikimedia.org/wikipedia/en/0/00/Spider-Man_No_Way_Home_poster.jpg",
      "deskripsi": "Petualangan Spiderman multiverse.",
    },

    {
      "judul": "Titanic",
      "gambar":
          "https://upload.wikimedia.org/wikipedia/id/1/19/Titanic_%28Official_Film_Poster%29.png",
      "deskripsi": "Kisah cinta di kapal Titanic.",
    },

    {
      "judul": "Frozen",
      "gambar":
          "https://upload.wikimedia.org/wikipedia/en/0/05/Frozen_%282013_film%29_poster.jpg",
      "deskripsi": "Petualangan Elsa dan Anna.",
    },

    {
      "judul": "Cars",
      "gambar": "https://upload.wikimedia.org/wikipedia/en/3/34/Cars_2006.jpg",
      "deskripsi": "Balapan Lightning McQueen.",
    },

    {
      "judul": "Toy Story",
      "gambar": "https://upload.wikimedia.org/wikipedia/en/1/13/Toy_Story.jpg",
      "deskripsi": "Kehidupan mainan yang hidup.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DAFTAR FILM"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(12),

        child: GridView.builder(
          itemCount: filmList.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

            crossAxisSpacing: 15,
            mainAxisSpacing: 15,

            childAspectRatio: 0.7,
          ),

          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,

                  MaterialPageRoute(
                    builder: (context) => DetailFilmScreen(
                      judul: filmList[index]["judul"]!,
                      gambar: filmList[index]["gambar"]!,
                      deskripsi: filmList[index]["deskripsi"]!,
                    ),
                  ),
                );
              },

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),

                        child: Image.network(
                          filmList[index]["gambar"]!,

                          width: double.infinity,
                          fit: BoxFit.cover,

                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[300],

                              child: Icon(Icons.broken_image, size: 50),
                            );
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8),

                      child: Text(
                        filmList[index]["judul"]!,

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
