part of 'pages_bloc.dart';

abstract class PagesEvent extends Equatable {
  const PagesEvent();

  @override
  List<Object> get props => [];
}

class Initialpage extends PagesEvent{}

class LaterPage extends PagesEvent{}