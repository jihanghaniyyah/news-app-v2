import 'package:news_app_v2/model/article_response.dart';
import 'package:news_app_v2/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class GetAllNewsBloc {
  final NewsRepository _repository = NewsRepository();
  final BehaviorSubject<ArticleResponse> _subject =
  BehaviorSubject<ArticleResponse>();

  getAllNews() async {
    ArticleResponse response = await _repository.getAllNews();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<ArticleResponse> get subject => _subject;

}
final getAllNewsBloc = GetAllNewsBloc();