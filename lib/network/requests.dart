import 'package:retrofit/retrofit.dart';
import '../main_lib.dart';
import '../models/author.dart';

part 'requests.g.dart';

@RestApi(baseUrl: "http://api.bestsellersbook.shop/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/continent")
  Future<List<Category>> getCategories();

  @GET("/book")
  Future<List<Book>> getBooks();

  @GET("/book?id={id}")
  Future<List<Book>> getBooksByAuthor(@Path("id") String authorId);

  @GET("/author")
  Future<List<Author>> getAuthor();
}