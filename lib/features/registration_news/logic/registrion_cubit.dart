import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'registrion_state.dart';

class RegistrionCubit extends Cubit<RegistrionState> {
  RegistrionCubit() : super(RegistrionInitial());

  Future<void> login(String email, String pass) async {
    if (email == "habibaGamal" && pass == "1234") {
      final pres = await SharedPreferences.getInstance();
      await pres.setBool("islogin", true);
      emit(Signin());
    }
  }



  Future<void> rigter(String email, String pass) async {
    emit(Signup());
  }

  Future<void> logoutfun() async {
    final pres = await SharedPreferences.getInstance();
    await pres.remove('islogin');
    emit(Logout());
  }

  Future<void> checklogin() async {
    final pres = await SharedPreferences.getInstance();
    bool islogin = pres.getBool('islogin') ?? false;
    if (islogin) {
      emit(Signin());
    } else {
      emit(Logout());
    }
  }
}
