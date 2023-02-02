import 'dart:math';

import 'package:books/providers/references_provider.dart';
import 'package:books/shared/commons_ui.dart';
import 'package:books/shared/src/widgets/book_item.dart';
import 'package:flutter/material.dart';

import '../../main_lib.dart';

class DashboardPage extends HookConsumerWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final books = ref.watch(booksProvider);
    //final category = ref.watch(categoriesProvider);
    //debugPrint("category = ${category.value?.length}");
    debugPrint("books = ${books.value?.length}");

    final widthCount = (MediaQuery.of(context).size.width ~/ 250).toInt();
    const minCount = 4;
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
            GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: max(widthCount, minCount),
                mainAxisSpacing: 30,
                crossAxisSpacing: 20,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (context, i) => BookItem(book: books.value![i]),
              itemCount: books.value?.length ?? 0,
            )
          ]),
        ));
  }
}
