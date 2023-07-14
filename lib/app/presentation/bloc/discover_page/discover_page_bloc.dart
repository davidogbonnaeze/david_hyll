import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:david_hyll/app/domain/entities/adventure.dart';
import 'package:david_hyll/core/services/adventure_service.dart';
import 'package:david_hyll/core/utils/dependency_injection.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'discover_page_event.dart';
part 'discover_page_state.dart';

@injectable
class DiscoverPageBloc extends Bloc<DiscoverPageEvent, DiscoverPageState> {
  AdventureService adventureService = getIt<AdventureService>();
  DiscoverPageBloc() : super(const InitialDiscoverPageState()) {
    on<LoadDiscoverPageDataEvent>((event, emit) async {
      emit(DiscoverPageLoadingState());
      List<Adventure> adventures  = await adventureService.getAdventures();
      emit(DiscoverPageSuccessState(adventures: adventures));
    });
  }
}
