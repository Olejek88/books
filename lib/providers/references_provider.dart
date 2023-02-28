
import '../main_lib.dart';
import '../models/author.dart';
import '../network/requests.dart';

final clientProvider = Provider((ref) => Dio(BaseOptions(headers: {},
    baseUrl: 'http://api.books.de')));

final categories = Provider.autoDispose<Future<List<Category>>>((ref) {
  return RestClient(ref.read(clientProvider)).getCategories();
});
final books = Provider.autoDispose<Future<List<Book>>>((ref) {
  return RestClient(ref.read(clientProvider)).getBooks();
});
final booksByAuthor = Provider.family.autoDispose<Future<List<Book>>, Author>((ref, author) {
  return RestClient(ref.read(clientProvider)).getBooksByAuthor(author.uuid);
});
final authors = Provider.autoDispose<Future<List<Author>>>((ref) {
  return RestClient(ref.read(clientProvider)).getAuthor();
});

final categoriesProvider = FutureProvider<List<Category>>((ref) async {
  return await ref.read(categories);
});

final booksProvider = FutureProvider<List<Book>>((ref) async {
  return await ref.read(books);
});

final booksByAuthorProvider = FutureProvider.family<List<Book>, Author>((ref, author) async {
  return await ref.read(booksByAuthor(author));
});

final authorProvider = FutureProvider<List<Author>>((ref) async {
  return await ref.read(authors);
});
