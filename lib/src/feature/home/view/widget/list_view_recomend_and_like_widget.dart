import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../../constants/app_api_const.dart';
import '../../view_model/recommended_view_model/recommended_view_model_cubit.dart';
import '../../../../helper/dpi.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_text_styles.dart';

class ListViewRecomendAndLikeWidget extends StatefulWidget {
  const ListViewRecomendAndLikeWidget({
    super.key,
  });

  @override
  State<ListViewRecomendAndLikeWidget> createState() =>
      _ListViewRecomendAndLikeWidgetState();
}

class _ListViewRecomendAndLikeWidgetState
    extends State<ListViewRecomendAndLikeWidget> {
  final RecommendedViewModelCubit viewModel = RecommendedViewModelCubit(
    recommendRepository: injectRecommendRepository(),
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedViewModelCubit, RecommendedViewModelState>(
      bloc: viewModel..getRecommend(),
      builder: (context, state) {
        return Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.cardDarkColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                width: 130.w,
                height: 170.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _imageItemReleasesWidget(index: index),
                    _titleNameImageWidget(index: index),
                    const Spacer(),
                    _ratingImageWidget(index: index),
                    Gap(3.h),
                  ],
                ),
              );
            },
            itemCount: viewModel.movieRecommendList.length,
            separatorBuilder: (context, index) => Gap(14.w),
          ),
        );
      },
    );
  }

  Padding _ratingImageWidget({required int index}) {
    int rating = double.parse(
      viewModel.movieRecommendList[index].voteAverage ?? "0.0",
    ).toInt();
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/svg_icons/star.svg',
            width: 18.w,
            height: 18.h,
          ),
          Gap(5.w),
          Text(
            rating.toString(),
            style: AppStyles.textStyle14,
          ),
        ],
      ),
    );
  }

  Padding _titleNameImageWidget({required int index}) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Text(
        viewModel.movieRecommendList[index].title ?? "",
        style: AppStyles.textStyle14,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  ClipRRect _imageItemReleasesWidget({required int index}) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.r),
        topRight: Radius.circular(10.r),
      ),
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl:
                "$imagePrefix${viewModel.movieRecommendList[index].posterPath}",
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.fill,
            width: double.infinity,
            height: 150.h,
          ),
          SvgPicture.asset(
            'assets/svg_icons/bookmark.svg',
            width: 27.w,
            height: 36.h,
          ),
        ],
      ),
    );
  }
}
