import 'package:flutter/material.dart';

import '../../../../../core/styles/styles.dart';

class ServicesDefinitionText extends StatelessWidget {
  const ServicesDefinitionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Column(
        children: [
          Text(
            'Multi-Services for Your Real Estate Needs',
            style: Styles.style18,
          ),
          const SizedBox(height: 4),
          Text(
            'Explore diverse real estate services for all your needs:\nProperty management, construction, insurance and \nmore in one place',
            style: Styles.style14,
          )
        ],
      ),
    );
  }
}
