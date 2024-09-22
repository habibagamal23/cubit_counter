import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:state_mang/features/home_news/model/news_model.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());


  void loaded() {
    emit(NewsLoading());
    var my = [
      NewsModel("fluter", "is good "),
      NewsModel("Cpp", "is good "),
      NewsModel("java", "is good "),
    ];
    emit(NewsLoaded(my));
  }
}
