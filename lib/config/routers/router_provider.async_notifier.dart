import '../../../../core/constants/index.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final routerProvider = Provider<GoRouter>(
  (ref) {
    // ref.listen(
    //   authAsyncNotifierProvider,
    //   (previous, next) {
    //     final context = rootNavigatorKey.currentContext!;
    //     if (next.isLoading) {
    //       return;
    //     }
    //     if (next.hasError) {
    //       context.snackBar(content: Text(CustomError(next.error!).toString()));
    //       return;
    //     }

    //     GoRouter.maybeOf(context)?.refresh();
    //   },
    // );

    return GoRouter(
      navigatorKey: rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: const HomeScreenRoute().location,
      routes: $appRoutes,
      // errorPageBuilder: (_, state) {
      //   return MaterialPage(
      //     key: state.pageKey,
      //     child: CustomErrorScreen(
      //       error: state.error,
      //     ),
      //   );
      // },
      redirect: (BuildContext context, GoRouterState goState) async {
        return null;
      },
    );
  },
  name: 'routerProvider',
);