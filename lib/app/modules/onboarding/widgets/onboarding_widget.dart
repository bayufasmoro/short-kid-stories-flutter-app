import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/res/app_colors.dart';
import '../../../core/res/app_images.dart';
import '../../../core/utils/app_textstyles.dart';
import '../../home/home_page.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        SvgPicture.asset(AppImages.illusBoyReading,
            width: 240, fit: BoxFit.scaleDown),
        const SizedBox(height: 8),
        Text(
          "CERITA UNTUK ANAK",
          style: AppTextStyle.size12Normal(color: AppColors.illusDarkBlue),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          "Dongeng Pengantar Tidur",
          style: AppTextStyle.size24Bold(color: AppColors.illusDarkBlue),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        Text(
          "Membacakan cerita akan melatih kemampuan mendengar anak sehingga mereka familiar dengan kata-kata. Tak hanya itu, cerita untuk anak memiliki alur yang menarik, mudah diingat oleh mereka, dan mengandung banyak pesan moral.",
          style: AppTextStyle.size12Normal(color: AppColors.illusDarkBlue),
          textAlign: TextAlign.center,
        ),
        Expanded(
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: AppColors.illusDarkBlue.withOpacity(0.5),
                  ),
                  height: 70,
                  width: 70,
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: AppColors.illusDarkBlue,
                      ),
                      height: double.infinity,
                      width: double.infinity,
                      child: const Icon(Icons.chevron_right, color: AppColors.textLight, size: 32,),
                    ),
                  ),
                ),
              ),
            )),
        const SizedBox(height: 32),
      ],
    );
  }
}
