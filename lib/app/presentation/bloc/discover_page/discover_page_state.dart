part of 'discover_page_bloc.dart';

abstract class DiscoverPageState extends Equatable {
  const DiscoverPageState();
}

class InitialDiscoverPageState extends DiscoverPageState {
  const InitialDiscoverPageState();
  @override
  List<Object> get props => [];
}


class DiscoverPageLoadingState extends DiscoverPageState {
  @override
  List<Object> get props => [];
}

class DiscoverPageSuccessState extends DiscoverPageState {
  final List<Adventure> adventures;
  const DiscoverPageSuccessState({required this.adventures, });

  @override
  List<Object> get props => [adventures];
}

class DiscoverPageFailureState extends DiscoverPageState {
  final String message;
  const DiscoverPageFailureState({required this.message});

  @override
  List<Object> get props => [message];
}

