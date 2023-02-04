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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:books/main_lib.dart' as _i5;
import 'package:books/pages/book_detail_page.dart' as _i2;
import 'package:books/pages/dashboard_page.dart' as _i1;
import 'package:flutter/material.dart' as _i4;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainRouter.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    Detail.name: (routeData) {
      final args = routeData.argsAs<DetailArgs>();
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.BookDetailPage(
          key: args.key,
          book: args.book,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          MainRouter.name,
          path: '/',
        ),
        _i3.RouteConfig(
          Detail.name,
          path: 'detail',
        ),
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class MainRouter extends _i3.PageRouteInfo<void> {
  const MainRouter()
      : super(
          MainRouter.name,
          path: '/',
        );

  static const String name = 'MainRouter';
}

/// generated route for
/// [_i2.BookDetailPage]
class Detail extends _i3.PageRouteInfo<DetailArgs> {
  Detail({
    _i5.Key? key,
    required _i5.Book book,
  }) : super(
          Detail.name,
          path: 'detail',
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

  final _i5.Key? key;

  final _i5.Book book;

  @override
  String toString() {
    return 'DetailArgs{key: $key, book: $book}';
  }
}
