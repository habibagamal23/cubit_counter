import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataInitial());

  String userName='';

  void setUsername(username) {
    userName=username;
    emit(ProfileLoaded());
  }
}
