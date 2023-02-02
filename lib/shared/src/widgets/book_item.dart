import 'package:flutter/material.dart';
import '../../../main_lib.dart';
import '../../commons_ui.dart';

class BookItem extends ConsumerWidget {
  final Book book;

  const BookItem({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(context, ref) {
    return Semantics(
      label: book.title,
      explicitChildNodes: false,
      container: true,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        padding: const EdgeInsets.all(10),
        key: Key(book.uuid),
        child: VStack(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Align(
                  alignment: Alignment.center,
                  child: bookImage(book),
              ),
            ),
            const SizedBox(height: 10),
            Text(book.author, textAlign: TextAlign.start, style: context.fontByStyle(ThemeTextStyle.title).copyWith(fontWeight: FontWeight.bold)),
            Text(book.title, textAlign: TextAlign.start, style: context.fontByStyle(ThemeTextStyle.title))
          ],
        ),
      ),
    );
  }
}

Widget bookImage(Book book) {
  return ClipRRect(
      borderRadius: BorderRadius.circular(5), // Image border
      child: Image.network(
        book.imageUrl ?? "",
        fit: BoxFit.fill,
        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return const Center(child: CircularProgressIndicator());
        },
      ));
}
