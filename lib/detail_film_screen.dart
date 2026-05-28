import 'package:flutter/material.dart';

class DetailFilmScreen extends StatelessWidget {

  final String judul;
  final String gambar;
  final String deskripsi;

  DetailFilmScreen({
    required this.judul,
    required this.gambar,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(judul),
        centerTitle: true,
      ),

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(

            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(15),

                child: Image.network(
                  gambar,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 20),

              Text(
                judul,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              Text(
                deskripsi,
                textAlign: TextAlign.justify,

                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}