import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

import '../app/navigation/routers/routes/home_route.dart';

class HomePage extends StatelessWidget {
  final HomeRoute route;

  const HomePage({required this.route, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).main_page_title),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: LayoutBuilder(
              builder: (context, contrains) {
                final width = 400.0; //contrains.maxWidth;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: width,
                      child: OutlinedButton(
                        onPressed: () {
                          context.push(route.categoriesRoute.routeAbsolutePath);
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(S.of(context).start_button),
                      ),
                    ),
                    SizedBox(height: 8,),

                    SizedBox(
                      width: width,
                      child: OutlinedButton(
                        onPressed: () {
                          //context.pushNamed(route.profile.routeName);
                          context.push(route.profileRoute.routeAbsolutePath);
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(S.of(context).profile_button),
                      ),
                    ),
                    SizedBox(height: 8,),

                    SizedBox(
                      width: width,
                      child: OutlinedButton(
                        onPressed: () {
                          context.push(route.recordsRoute.routeAbsolutePath);
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(S.of(context).records_button),
                      ),
                    ),
                    SizedBox(height: 8,),

                    SizedBox(
                      width: width,
                      child: OutlinedButton(
                        onPressed: () {
                          AppProvider.of(context).authService.signOut();
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(S.of(context).logout_button),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
