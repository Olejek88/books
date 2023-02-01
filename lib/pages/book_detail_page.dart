import '../../main_lib.dart';
import '../modules/main/custom_scaffold.dart';

class BookDetailPage extends HookConsumerWidget {
  final String bookId;

  const BookDetailPage({Key? key, required this.bookId}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final checklistItem = ref.watch(checklistItemsByIdProvider(checklistItemId));
    return const CustomScaffold(
      key: Key("Detail"),
      useScaffoldBackground: false,
      label: "",
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: SizedBox(),
        ),
      ),
    );
  }
}
