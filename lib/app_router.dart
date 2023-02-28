import 'package:books/pages/author_page.dart';
import 'package:books/pages/book_detail_page.dart';
import 'package:books/pages/dashboard_page.dart';
import 'main_lib.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
        initial: true,
        name: "MainRouter",
        page: DashboardPage,
        path: '/',
    ),
    AutoRoute(
      name: "AuthorPage",
      page: AuthorPage,
      path: '/author',
    ),
    AutoRoute(name: "detail", path: '/book', page: BookDetailPage)
  ],
)
class $AppRouter {}
