import 'package:books/providers/references_provider.dart';

import '../../main_lib.dart';
import '../modules/main/custom_scaffold.dart';
import '../shared/commons_ui.dart';

class DashboardPage extends HookConsumerWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final books = ref.watch(booksProvider);
    debugPrint("books = ${books.value?.length}");
    return CustomScaffold(
        label: context.i10n.travel_app,
        leading: null,
        key: const Key("Dashboard"),
        automaticallyImplyLeading: false,
        showGlobalSearchButton: true,
        body: const SizedBox());
  }
}
