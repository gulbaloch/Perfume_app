import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.menu, color: Colors.white),
              Text(
                "Perfume".toUpperCase(),
                style: GoogleFonts.playfairDisplay(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
             
            ],

          ),
        ),
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.deepOrange,iconSize: 20,
      elevation: 4,
items: const <BottomNavigationBarItem>[
BottomNavigationBarItem(icon: Icon(Icons.home),

label: "Home"
),

BottomNavigationBarItem(icon: Icon(Icons.settings),
label: "Settings",

),
BottomNavigationBarItem(icon:Icon(Icons.search),
label: "Search"
)

],

    ),
      
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔍 Search bar
              TextField(
                decoration: InputDecoration(
                  hintText: "Search Perfume...",
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 54, 95, 244),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 🏷️ Recommended section
              Text(
                "RECOMMENDED",
                style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),

              const SizedBox(height: 20),

              // 🧴 Scrollable cards
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCard(
                      // color: Colors.pinkAccent,
                      imageUrl:
                          "https://images.unsplash.com/photo-1588514912908-8f5891714f8d?q=80&w=869&auto=format&fit=crop",
                      title: "Rose Bliss",
                      subtitle: "Floral & Romantic",
                    ),
                    
                    buildCard(
                      // color: Colors.deepPurpleAccent,
                      imageUrl:
                          "https://images.unsplash.com/photo-1519669011783-4eaa95fa1b7d?q=80&w=379&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      title: "Midnight Oud",
                      subtitle: "Luxury & Deep",
                    ),
                    buildCard(
                      // color: Colors.tealAccent,
                      imageUrl:
                          "https://images.unsplash.com/photo-1613521140785-e85e427f8002?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      title: "Citrus Bloom",
                      subtitle: "Energetic & Bright",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}

// 🪶 Function with color, image, title & subtitle
Widget buildCard({

  required String imageUrl,
  required String title,
  required String subtitle,
}) {
  return Card(
    
    elevation: 5,
    margin: const EdgeInsets.only(right: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    child: SizedBox(
      width: 200,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🖼️ Image section
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 180,
              width: double.infinity,
            ),
          ),

          // 📄 Title and subtitle
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
