// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:books/main_lib.dart' as _i6;
import 'package:books/models/author.dart' as _i7;
import 'package:books/pages/author_page.dart' as _i2;
import 'package:books/pages/book_detail_page.dart' as _i3;
import 'package:books/pages/dashboard_page.dart' as _i1;
import 'package:flutter/material.dart' as _i5;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MainRouter.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    AuthorPage.name: (routeData) {
      final args = routeData.argsAs<AuthorPageArgs>();
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.AuthorPage(
          key: args.key,
          author: args.author,
        ),
      );
    },
    Detail.name: (routeData) {
      final args = routeData.argsAs<DetailArgs>();
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.BookDetailPage(
          key: args.key,
          book: args.book,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          MainRouter.name,
          path: '/',
        ),
        _i4.RouteConfig(
          AuthorPage.name,
          path: '/author',
        ),
        _i4.RouteConfig(
          Detail.name,
          path: '/book',
        ),
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class MainRouter extends _i4.PageRouteInfo<void> {
  const MainRouter()
      : super(
          MainRouter.name,
          path: '/',
        );

  static const String name = 'MainRouter';
}

/// generated route for
/// [_i2.AuthorPage]
class AuthorPage extends _i4.PageRouteInfo<AuthorPageArgs> {
  AuthorPage({
    _i6.Key? key,
    required _i7.Author author,
  }) : super(
          AuthorPage.name,
          path: '/author',
          args: AuthorPageArgs(
            key: key,
            author: author,
          ),
        );

  static const String name = 'AuthorPage';
}

class AuthorPageArgs {
  const AuthorPageArgs({
    this.key,
    required this.author,
  });

  final _i6.Key? key;

  final _i7.Author author;

  @override
  String toString() {
    return 'AuthorPageArgs{key: $key, author: $author}';
  }
}

/// generated route for
/// [_i3.BookDetailPage]
class Detail extends _i4.PageRouteInfo<DetailArgs> {
  Detail({
    _i6.Key? key,
    required _i6.Book book,
  }) : super(
          Detail.name,
          path: '/book',
          args: DetailArgs(
            key: key,
            book: book,
          ),
        );

  static const String name = 'Detail';
}

class DetailArgs {
  const DetailArgs({
    this.key,
    required this.book,
  });

  final _i6.Key? key;

  final _i6.Book book;

  @override
  String toString() {
    return 'DetailArgs{key: $key, book: $book}';
  }
}
