import 'package:depi_hapd/Features/Authentication/data/rebo/register_rebo_impl.dart';
import 'package:depi_hapd/Features/Authentication/presentation/view_models/featured_register_cubit/featured_register_cubit.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/register_three_view_body.dart';
import 'package:depi_hapd/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class RegisterThreeView extends StatelessWidget {
  const RegisterThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeaturedRegisterCubit(getIt.get<RegisterReboImpl>()),
      child:  Scaffold(
        body: SafeArea(
          child: RegisterThreeViewBody(),
        ),
      ),
    );
  }
}
