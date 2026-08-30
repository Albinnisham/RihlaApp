import 'package:flutter/material.dart';
import '../models/tourist_places.dart';
import 'detailspage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final Color primaryColor = Color(0xFF176B72);
  final Color secondaryColor = Color(0xFFE8F3F1);
  final Color backgroundColor = Color(0xFFF7F9F8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        title: Text(
          "Rihla | رحلة",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(Icons.explore_outlined, size: 25),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(18),
        children: [
          Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF176B72), Color(0xFF0E555B)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.12),
                  blurRadius: 15,
                  offset: Offset(0, 7),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover Saudi Arabia",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Your next unforgettable journey starts here.",
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                ),
                SizedBox(height: 20),
                Text(
                  "Explore beautiful destinations, discover local culture and experience the diversity of Saudi Arabia.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Where will you go?",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF202525),
            ),
          ),
          SizedBox(height: 6),
          Text(
            "Explore some of Saudi Arabia's most beautiful destinations.",
            style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
          ),
          SizedBox(height: 20),
          ...touristPlaces.map((place) => Container(
                margin: EdgeInsets.only(bottom: 22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 14,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(24)),
                      child: Image.asset(
                        place.image,
                        width: double.infinity,
                        height: 210,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 210,
                            color: secondaryColor,
                            child: Center(
                              child: Icon(
                                Icons.image_not_supported_outlined,
                                size: 45,
                                color: primaryColor,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 17, 18, 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  place.name,
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF202525),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: primaryColor,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: primaryColor,
                                size: 17,
                              ),
                              SizedBox(width: 5),
                              Text(
                                place.location,
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Text(
                            place.description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return DetailsScreen(place: place);
                                    },
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                foregroundColor: Colors.white,
                                elevation: 0,
                                padding: EdgeInsets.symmetric(vertical: 14),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              child: Text(
                                "Explore ${place.name}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(height: 15),
          Center(
            child: Text(
              "Your Saudi adventure awaits ✨",
              style: TextStyle(
                color: primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}