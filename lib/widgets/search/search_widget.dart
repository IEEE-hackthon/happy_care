import 'package:flutter/material.dart';
import 'package:save_environment/widgets/loginAndRegistration/custom_textField.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget(
      {super.key,
      required this.coverPhoto,
      required this.borderColor,
      required this.leabel});
  final String coverPhoto;
  final Color borderColor;
  final String leabel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('For search'),
              const SizedBox(
                height: 5,
              ),
              CustomTextField(
                borderColor: borderColor,
                label: 'Search',
                fillColor: Colors.white,
                icon: const Icon(Icons.search),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text('Recent request'),
              const SizedBox(
                height: 70,
              ),
              Center(
                  child: Column(
                children: [
                  Image(
                    image: AssetImage(coverPhoto),
                    height: 210,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Text(
                    leabel,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
