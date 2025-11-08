import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Layout Exercise',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),
      home: const MovieLayoutScreen(),
    );
  }
}

final List<Map<String, String>> featuredItems = [
  {
    'title': 'Aquaman',
    'imageUrl':
        'https://upload.wikimedia.org/wikipedia/id/thumb/4/4a/Aquaman_and_the_Lost_Kingdom_poster.jpg/250px-Aquaman_and_the_Lost_Kingdom_poster.jpg',
  },
  {
    'title': 'Thor',
    'imageUrl':
        'https://m.media-amazon.com/images/M/MV5BZjRiMDhiZjQtNjk5Yi00ZDcwLTkyYTEtMDc1NjdmNjFhNGIzXkEyXkFqcGc@._V1_.jpg',
  },
  {
    'title': 'Spider-Man No Way Home',
    'imageUrl':
        'https://upload.wikimedia.org/wikipedia/id/2/20/Poster_Spider-Man_No_Way_Home.jpg',
  },
  {
    'title': 'Deadpool & Wolverine',
    'imageUrl':
        'https://cdn1-production-images-kly.akamaized.net/aUomn47r0RssyU5O5JEC4LiMeQI=/640x853/smart/filters:quality(75):strip_icc()/kly-media-production/medias/4874285/original/020548700_1719304138-Film_Bulan_Juli_13.jpg',
  },
];

final List<Map<String, String>> trendingItems = [
  {
    'title': 'Wicked',
    'imageUrl':
        'https://m.media-amazon.com/images/I/81Rlj17feeL._AC_UF1000,1000_QL80_.jpg',
  },
  {
    'title': 'Avatar',
    'imageUrl':
        'https://lumiere-a.akamaihd.net/v1/images/image_974b1076.jpeg?region=0%2C0%2C540%2C810',
  },
  {
    'title': 'Bad Boys',
    'imageUrl':
        'https://www.sonypictures.fr/sites/france2/files/2024-10/BB-affiche-450x600.jpg',
  },
  {
    'title': 'Guardians of The Galaxy',
    'imageUrl':
        'https://m.media-amazon.com/images/M/MV5BM2ZmNjQ2MzAtNDlhNi00MmQyLWJhZDMtNmJiMjFlOWY4MzcxXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
  },
  {
    'title': 'Mufasa The Lion King',
    'imageUrl':
        'https://m.media-amazon.com/images/M/MV5BYjBkOWUwODYtYWI3YS00N2I0LWEyYTktOTJjM2YzOTc3ZDNlXkEyXkFqcGc@._V1_.jpg',
  },
  {
    'title': 'Black Panther Wakanda Forever',
    'imageUrl':
        'https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/Black_Panther_Wakanda_Forever_poster.jpg/250px-Black_Panther_Wakanda_Forever_poster.jpg',
  },
];

final List<Map<String, String>> popularItems = [
  {
    'title': 'The Shadow s Edge',
    'imageUrl': 'https://i.mydramalist.com/zB0ZYA_4c.jpg',
  },
  {
    'title': 'Train to Busan',
    'imageUrl':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtw_PBup4I6C-UpIejLOCPgz5hZty4u2THnw&s.jpg',
  },
  {
    'title': 'A Legend',
    'imageUrl':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUkJluB6Rf4wZir3IgOV0lAOi2X67Zp4E3MA',
  },
  {
    'title': 'Ghost Train',
    'imageUrl':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_rinX7DvisNJHrRNBhXFBYwYsk055B-xRpg&s.jpg',
  },
  {
    'title': 'Bleeding Steel',
    'imageUrl':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvfN1xjV_bff0W4yCABCGq5tuHZD_n4gRlLg&s.jpg',
  },
  {
    'title': 'Exhuma',
    'imageUrl':
        'https://rijotobing.wordpress.com/wp-content/uploads/2024/03/d56dd7ed-3850-454c-92a4-40504519ce27.jpeg?w=405.jpg',
  },
];

final List<Map<String, String>> topRatedItems = [
  {
    'title': 'How to Make Millions Before Grandma Died',
    'imageUrl': 'https://i.ebayimg.com/images/g/FSgAAOSw6pNmfEe-/s-l400.jpg',
  },
  {
    'title': 'Sadako Dx',
    'imageUrl':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAcaXfk5LxGZU6KMQ1onFOrn-m8Jnz_yahrw&s.jpg',
  },
  {
    'title': 'Pee Mak',
    'imageUrl':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwTjB7SGLWtolkXEvqCT6PXe-5Wh8wFjGT_Q',
  },
  {
    'title': 'Alice in Borderland',
    'imageUrl':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_4YIqbbRwnuUAuFLLJjj81RA9ZDjBvhDepQ&s.jpg',
  },
  {
    'title': 'Rider',
    'imageUrl':
        'https://m.media-amazon.com/images/M/MV5BNzQ0YWM1MDYtZGEyYi00MDQ0LTk5NDAtYTU0NzFhYTI4YTI4XkEyXkFqcGc@._V1_.jpg',
  },
  {
    'title': 'Zom 100',
    'imageUrl':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4COIYZIhZ93eH8FSatcckYc7QqtleODUUoA&s.jpg',
  },
];

class MovieLayoutScreen extends StatelessWidget {
  const MovieLayoutScreen({super.key});

  Widget _buildNowPlayingHeader() {
    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: const Center(
        child: Text(
          'Now Playing',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 10.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildHorizontalList(List<Map<String, String>> items) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final title = item['title'] ?? 'Movie Poster';
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              width: 110,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      item['imageUrl']!,
                      fit: BoxFit.cover,
                      width: 110,
                      height: 200,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey.shade800,
                          width: 110,
                          height: 200,
                          child: Center(
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                      ),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 2.0,
                      ),
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildFeaturedCarousel() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300.0,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        autoPlayInterval: const Duration(seconds: 4),
      ),
      items: featuredItems.map((item) {
        return Builder(
          builder: (BuildContext context) {
            final title = item['title'] ?? 'Featured Movie';
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.red, width: 3.0),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      item['imageUrl']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        print('Error loading image: $error');
                        return Container(
                          color: Colors.grey.shade800,
                          child: Center(
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 5.0,
                              color: Colors.black,
                              offset: Offset(1.0, 1.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            _buildNowPlayingHeader(),

            _buildFeaturedCarousel(),

            _buildCategoryHeader('Trending'),
            _buildHorizontalList(trendingItems),

            _buildCategoryHeader('Popular'),
            _buildHorizontalList(popularItems),

            _buildCategoryHeader('Top Rated'),
            _buildHorizontalList(topRatedItems),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
