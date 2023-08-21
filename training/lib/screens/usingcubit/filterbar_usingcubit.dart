import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterBarUsingCubit extends StatelessWidget {
  final List<String> filterNames = [
    "Healthy",
    "Technology",
    "Finance",
    "Arts",
    "Sports"
  ];
  String selectedFilter = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (String filterName in filterNames)
                      FilterButton(
                        filterName: filterName,
                        isSelected: selectedFilter == filterName,
                        onTap: () {
                          selectedFilter = filterName;
                        },
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String filterName;
  final bool isSelected;
  final VoidCallback onTap;

  FilterButton(
      {required this.filterName,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width * 0.26,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            isSelected ? Colors.red : Colors.grey,
          ),
        ),
        child: Text(
          filterName,
          style: GoogleFonts.nunito(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
