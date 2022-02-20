part of 'pages_bloc.dart';

abstract class PagesState extends Equatable {
  const PagesState();

  @override
  List<Object> get props => [];
}

class PagesInitial extends PagesState {}

class AppViewPage extends PagesState {
}
