
import '../main_lib.dart';
import '../network/requests.dart';

final clientProvider = Provider((ref) => Dio(BaseOptions(headers: {
}, baseUrl: 'http://api.books.de')));

final categories = Provider.autoDispose<Future<List<Category>>>((ref) {
  return RestClient(ref.read(clientProvider)).getCategories();
});
final books = Provider.autoDispose<Future<List<Book>>>((ref) {
  return RestClient(ref.read(clientProvider)).getBooks();
});

final categoriesProvider = FutureProvider<List<Category>>((ref) async {
  return await ref.read(categories);
});
final booksProvider = FutureProvider<List<Book>>((ref) async {
  return await ref.read(books);
});
