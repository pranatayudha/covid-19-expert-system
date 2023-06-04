import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../application/app/constants/image_constants.dart';
import '../../shared/network_sensitive.dart';
import 'home_viewmodel.dart';
import 'widgets/counter.dart';
import 'widgets/my_header.dart';
import 'widgets/symptom_card.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return NetworkSensitive(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        controller: viewModel.controller,
        child: Column(
          children: <Widget>[
            MyHeader(
              image: ImageConstants.drCorona,
              textTop: 'Rekomendasi Solusi',
              textBottom: 'Gejala COVID-19',
              offset: viewModel.offset,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Kasus Terbaru\n',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF303030),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nunito',
                              ),
                            ),
                            TextSpan(
                              text: 'Data terbaru Maret 28',
                              style: TextStyle(
                                color: Color(0xFF959595),
                                fontFamily: 'Nunito',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'Lihat Detil',
                        style: TextStyle(
                          color: Color(0xFF3382CC),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    padding: EdgeInsets.all(20.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 30,
                          color: const Color(0xFFB7B7B7).withOpacity(.16),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Counter(
                          color: Color(0xFFFF8748),
                          number: 1046,
                          title: 'Terinfeksi',
                        ),
                        Counter(
                          color: Color(0xFFFF4848),
                          number: 87,
                          title: 'Meninggal',
                        ),
                        Counter(
                          color: Color(0xFF36C12C),
                          number: 46,
                          title: 'Sembuh',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        'Penyebaran Virus',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF303030),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Lihat Detil',
                        style: TextStyle(
                          color: Color(0xFF3382CC),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 20.h,
                      bottom: 20.h,
                    ),
                    padding: EdgeInsets.all(20.w),
                    height: 178,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 30,
                          color: const Color(0xFFB7B7B7).withOpacity(.16),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      ImageConstants.map,
                      fit: BoxFit.contain,
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height / 2.8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Gejala Dasar',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF303030),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              SymptomCard(
                                image: ImageConstants.headache,
                                title: 'Sakit Kepala',
                                isActive: true,
                              ),
                              SizedBox(width: 20),
                              SymptomCard(
                                image: ImageConstants.caugh,
                                title: 'Batuk',
                              ),
                              SizedBox(width: 20),
                              SymptomCard(
                                image: ImageConstants.fever,
                                title: 'Demam',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
