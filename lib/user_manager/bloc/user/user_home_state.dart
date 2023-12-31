import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';

class UserHomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Loading extends UserHomeState {}

class Success extends UserHomeState {
  Success({required this.users});

  final Stream<List<User>> users;

  @override
  List<Object?> get props => [users];
}

class Error extends UserHomeState {
  Error({required this.error});

  final String error;

  @override
  List<Object?> get props => [error];
}
