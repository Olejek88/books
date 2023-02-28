import 'package:books/app_router.gr.dart';

import '../../../main_lib.dart';
import '../../../models/author.dart';
import '../../commons_ui.dart';

class AuthorItem extends ConsumerWidget {
  final Author author;

  const AuthorItem({Key? key, required this.author}) : super(key: key);

  @override
  Widget build(context, ref) {
    return Semantics(
      label: author.title,
      explicitChildNodes: false,
      container: true,
      child: GestureDetector(
        onTap: () {
          debugPrint("open author: $author");
          context.router.push(AuthorPage(author: author));
        },
        child: VStack(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Align(
                  alignment: Alignment.center,
                  child: authorImage(author),
                ),
              ),
              const SizedBox(height: 10),
              Text(author.title,
                  textAlign: TextAlign.start,
                  style: context.fontByStyle(ThemeTextStyle.title).copyWith(fontWeight: FontWeight.bold)),
            ],
        ),
      ),
    );
  }
}

Widget authorImage(Author author) {
  return ClipOval(
    child: SizedBox.fromSize(
      child: Image.network(author.imageUrl ?? "", fit: BoxFit.cover),
    ),
  );
}
