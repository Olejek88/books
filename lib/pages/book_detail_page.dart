import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main_lib.dart';
import '../shared/commons_ui.dart';
import '../shared/src/widgets/book_item.dart';

class BookDetailPage extends HookConsumerWidget {
  final Book book;

  const BookDetailPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final checklistItem = ref.watch(checklistItemsByIdProvider(checklistItemId));
    return Scaffold(
        key: const Key("Dashboard"),
        body: SingleChildScrollView(
          child: VStack(padding: const EdgeInsets.all(10), spacing: 10, children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/shop.jpg"), fit: BoxFit.cover),
                  color: Colors.cyan,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(10),
              child: Text("BookStore", style: context.fontByStyle(ThemeTextStyle.headline)),
            ),
            HStack(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      _launchURL(book.link);
                    },
                    child: bookImage(book)),
                Expanded(
                  child: VStack(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(book.author,
                          textAlign: TextAlign.start,
                          style: context.fontByStyle(ThemeTextStyle.title).copyWith(fontWeight: FontWeight.bold)),
                      Text(book.title, textAlign: TextAlign.start, style: context.fontByStyle(ThemeTextStyle.title)),
                      Text(book.description,
                          textAlign: TextAlign.start, style: context.fontByStyle(ThemeTextStyle.body)),
/*
                      Image.network(book.imageUrl ?? "", fit: BoxFit.fill,
                          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      })
*/
                    ],
                  ),
                )
              ],
            )
          ]),
        ));
  }
}

void _launchURL(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
}
