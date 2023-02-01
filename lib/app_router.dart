import 'package:books/pages/book_detail_page.dart';
import 'package:books/pages/dashboard_page.dart';
import 'main_lib.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      initial: true,
      name: "MainRouter",
      page: DashboardPage,
      path: '/dashboard',
      children: [
        AutoRoute(name: "detail", path: 'detail', page: BookDetailPage)
      ],
    ),
  ],
)
class $AppRouter {}
