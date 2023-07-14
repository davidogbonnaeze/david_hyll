import 'package:david_hyll/app/presentation/bloc/discover_page/discover_page_bloc.dart';
import 'package:david_hyll/core/utils/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:preload_page_view/preload_page_view.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  DiscoverPageBloc discoverPageBloc = getIt<DiscoverPageBloc>();

  @override
  void initState() {
    super.initState();
    discoverPageBloc.add(const LoadDiscoverPageDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => discoverPageBloc,
        child: BlocBuilder<DiscoverPageBloc, DiscoverPageState>(
          builder: (context, state) {
            if(state is DiscoverPageSuccessState) {
              //using images because the api contains mostly images and i am time constrained to implement the corner cse for videos
              return  PreloadPageView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: state.adventures.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage( fit: BoxFit.cover, image: NetworkImage(state.adventures[index].contents[0].contentUrl))
                      ),
                    );
                  },
                  onPageChanged: (int position) {},
                  preloadPagesCount: 6,
                  controller: PreloadPageController(),
            );
            }
            if(state is DiscoverPageLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
