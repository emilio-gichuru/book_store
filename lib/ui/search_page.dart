import 'package:book_store/domain/model/book_model.dart';
import 'package:book_store/utilities/app_constants.dart';
import 'package:book_store/utilities/app_images.dart';
import 'package:book_store/utilities/color_constants.dart';
import 'package:book_store/utilities/common_widgets/network_image_container.dart';
import 'package:book_store/utilities/common_widgets/rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: primaryColor,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: black,
              size: 22,
            ),
          ),
          title: Text(
            "Search",
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: black,
            ),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.all(10),
              child: NetworkImageContainer(
                imageUrl: defaultImage,
                borderRadius: BorderRadius.circular(10),
                height: height * 0.03,
                width: height * 0.04,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SearchContainer(
                        height: height,
                        width: width,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: height * 0.06,
                      width: height * 0.06,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.filter_alt_outlined,
                        size: 22,
                        color: white,
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  height: height * 0.05,
                  width: width,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final data = bookCategories[index];
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: grey,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          data["name"]!,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: grey,
                          ),
                        )),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: width * 0.03,
                      );
                    },
                    itemCount: bookCategories.length,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const CategoryHeader(
                  title: "Recommended",
                ),
                RecommendedSection(height: height),
                ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final book =
                        books.map((e) => BookModel.fromJson(e)).toList();
                    final data = book[index];
                    return RecommendedContainer(
                      model: data,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: height * 0.02,
                    );
                  },
                  itemCount: books.length,
                )
              ],
            ),
          ),
        ));
  }
}

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.02,
    );
  }
}

class RecommendedContainer extends StatelessWidget {
  const RecommendedContainer({
    super.key,
    required this.model,
  });

  final BookModel model;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          NetworkImageContainer(
            imageUrl: model.image,
            borderRadius: BorderRadius.circular(20),
            height: height * 0.2,
            width: width * 0.3,
          ),
          SizedBox(
            width: width * 0.04,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      model.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: black,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.save,
                      size: 23,
                      color: black,
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Text(
                  model.author,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: grey,
                  ),
                ),
                SizedBox(
                  height: height * 0.0075,
                ),
                RatingBar(rating: model.rating),
                SizedBox(
                  height: height * 0.06,
                ),
                Row(
                  children: [
                    //* pages section
                    RowWidget(
                      width: width,
                      icon: Icons.shelves,
                      name: "${model.pages} pages",
                    ),
                    const Spacer(),
                    //* duration
                    RowWidget(
                      width: width,
                      icon: Icons.headphones,
                      name: model.duration,
                    ),
                    SizedBox(
                      width: width * 0.1,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.width,
    required this.icon,
    required this.name,
  });

  final double width;
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: black,
        ),
        SizedBox(
          width: width * 0.02,
        ),
        Text(
          name,
          overflow: TextOverflow.clip,
          maxLines: 1,
          style: GoogleFonts.inter(
            fontSize: 14.5,
            fontWeight: FontWeight.w700,
            color: black,
          ),
        ),
      ],
    );
  }
}

class MyBookSection extends StatelessWidget {
  const MyBookSection({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.25,
      width: width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final book = books.map((e) => BookModel.fromJson(e)).toList();
          final data = book[index];
          return BookContainer(
            bookImage: data.image,
            title: data.name,
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: width * 0.05,
          );
        },
        itemCount: books.length,
      ),
    );
  }
}

class BookContainer extends StatelessWidget {
  const BookContainer(
      {super.key, required this.bookImage, required this.title});

  final String bookImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return IntrinsicHeight(
      child: SizedBox(
        width: width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NetworkImageContainer(
              imageUrl: bookImage,
              borderRadius: BorderRadius.circular(20),
              height: height * 0.2,
              width: width * 0.3,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: black,
          ),
        ),
        const Spacer(),
        Text(
          "See All",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: blue,
          ),
        ),
      ],
    );
  }
}

class SearchContainer extends StatelessWidget {
  SearchContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: searchController,
        decoration: InputDecoration(
            hintText: "find My boob",
            hintStyle: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: grey,
            ),
            prefixIcon: const Icon(
              Icons.search,
              size: 20,
              color: grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: grey,
              ),
            )));
  }
}
