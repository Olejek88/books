import 'package:books/pages/book_detail_page.dart';
import 'package:books/pages/dashboard_page.dart';
import 'package:books/shared/commons_ui.dart';
import 'main_lib.dart';

const subPagesAutoRoutes = [
  //AutoRoute(name: "detail", path: 'detail', page: BookDetailPage)
];

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(name: "MainRoute", page: DashboardPage, initial: true, children: [
      //...subPagesAutoRoutes
    ]),
  ],
)
class $AppRouter {}

