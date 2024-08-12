import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

class PlacesWidget extends StatelessWidget {
  const PlacesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> places = [
      'Bangalore',
      'Kerala',
      'Delhi',
      'Mumbai',
      'Chennai',
      'Tamil Nadu',
      'Mysore'
    ];

    return BlocBuilder<CollegesBloc, CollegesState>(
      builder: (context, state) {
        String? dropdownValue = state.placeName;
        if (!places.contains(state.placeName)) {
          dropdownValue = null;
        }

        return Row(
          children: [
            DropdownButton<String>(
              value: dropdownValue,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              items: places.map<DropdownMenuItem<String>>(
                (place) {
                  return DropdownMenuItem<String>(
                    value: place,
                    child: Text(
                      place,
                      style: TextStyle(color: AppColors.kGrey),
                    ),
                  );
                },
              ).toList(),
              onChanged: (selectedPlace) {
                if (selectedPlace != null) {
                  context.read<CollegesBloc>().add(PlaceCollege(place: selectedPlace));
                }
              },
              hint: Text(
                'Places',
                style: TextStyle(color: AppColors.kGrey),
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: AppColors.kWhite,
              ),
            ),
          ],
        );
      },
    );
  }
}
