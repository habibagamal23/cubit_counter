part of 'registrion_cubit.dart';

@immutable
sealed class RegistrionState {}

final class RegistrionInitial extends RegistrionState {}

final class Signin extends RegistrionState {}

final class Signup extends RegistrionState {}

final class Logout extends RegistrionState {}

final class Registfaliuer extends RegistrionState {
  final String err;
  Registfaliuer(this.err);
}
