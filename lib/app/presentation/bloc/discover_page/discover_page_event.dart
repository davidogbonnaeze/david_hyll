part of 'discover_page_bloc.dart';

abstract class DiscoverPageEvent extends Equatable {
  const DiscoverPageEvent();
}

class LoadDiscoverPageDataEvent extends DiscoverPageEvent{
  const LoadDiscoverPageDataEvent();

  @override
  List<Object?> get props => [];

}