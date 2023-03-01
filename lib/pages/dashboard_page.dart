import 'dart:math';

import 'package:books/providers/references_provider.dart';
import 'package:books/shared/commons_ui.dart';
import 'package:books/shared/src/widgets/author_item.dart';
import 'package:flutter/material.dart';

import '../../main_lib.dart';

class DashboardPage extends HookConsumerWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authors = ref.watch(authorProvider);
    final widthCount = (MediaQuery.of(context).size.width ~/ 150).toInt();
    const minCount = 2;
    return Title(
        title: 'Bestsellers bookstore',
        color: Colors.black,
        child: Scaffold(
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
                physics: const ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: max(widthCount, minCount),
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.9,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, i) => AuthorItem(author: authors.value![i]),
                itemCount: authors.value?.length ?? 0,
              )
            ]),
          )),
    );
  }
}
