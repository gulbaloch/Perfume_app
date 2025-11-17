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
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discover".toUpperCase(),
                style: GoogleFonts.playfairDisplay(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              Row(
                children: [
                  const Icon(Icons.search, color: Colors.white),
                  SizedBox(width: 12),
                  const Icon(Icons.shopping_cart_outlined, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(255, 87, 34, 1),
          iconSize: 30,
          elevation: 4,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),

              label: "Home",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.white),

              label: "Settings, ",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white),
              label: "Search",
            ),
          ],
        ),

        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔍 Search bar
              // TextField(
              //   decoration: InputDecoration(
              //     hintText: "Search Perfume...",
              //     prefixIcon: const Icon(
              //       Icons.search,
              //       color: Color.fromARGB(255, 54, 95, 244),
              //     ),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(12),
              //     ),
              //   ),
              // ),
              Stack(
                children: [
                  ClipRRect(
                    // borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1648208567975-6c562717d7fe?q=80&w=388&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      height: 220,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 20,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New Perfume ",
                          style: GoogleFonts.playfairDisplay(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "Collection 2025",
                          style: GoogleFonts.playfairDisplay(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "Choose perfect smell who you like it.",
                          style: GoogleFonts.playfair(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 3),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildBrandTag(title: "chenal".toUpperCase()),
                    buildBrandTag(title: "Boss".toUpperCase()),
                    buildBrandTag(title: "Dior".toUpperCase()),
                    buildBrandTag(title: "Noir".toUpperCase()),

                    const SizedBox(width: 7),
                  ],
                ),
              ),
              // 🏷️ Recommended section
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "Best Seller",
                      style: GoogleFonts.playfairDisplay(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      children: [
                        Text("See All", style: GoogleFonts.lato(fontSize: 15)),
                        Icon(Icons.arrow_downward_rounded, size: 18),
                      ],
                    ),
                  ],
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
              const SizedBox(width: 20, height: 3),

              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 0.7,
                children: [buildDetailCard(product_title: "rose")],
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
    elevation: 3,
    margin: const EdgeInsets.only(right: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    child: SizedBox(
      width: 200,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // 🖼️ Image section
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
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
                  style: GoogleFonts.lato(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildBrandTag({required title}) {
  return Center(
    child: Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Text(
          title,
          style: GoogleFonts.lato(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    ),
  );
}

Widget buildDetailCard({required product_title}) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
    child: SizedBox(
      height: 300,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Text(product_title),
      ),
    ),
  );
}
