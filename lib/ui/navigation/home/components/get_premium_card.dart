import 'package:flutter/material.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../../../../style/theme/typography/typography.dart';
import '../../../components/buttons/blur_icon_button.dart';
import '../../../components/buttons/primary_button.dart';

class GetPremiumCard extends StatelessWidget {
  const GetPremiumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colorScheme.containerMedium,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage("https://cdn.europosters.eu/image/hp/116547.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Watch favorite movies without any ads",
                  style: AppTextStyles.header1.copyWith(
                    color: context.colorScheme.textPrimary,
                  ),
                ),
              ),
              BlurIconButton(icon: Icon(Icons.close)),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [PrimaryButton(title: "Get Premium", onTap: () {})],
          ),
        ],
      ),
    );
  }
}
