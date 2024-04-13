import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_rating_bar.dart';
import '../state_holders/details_controller.dart';

class CourseDetailsScreen extends StatefulWidget {
  const CourseDetailsScreen({super.key});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  List<String> dropdownItemLists1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];
  @override
  void initState() {
    super.initState();

    Get.find<CourseDetailsController>().getCourseApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF7455F7),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        child: Center(
                          child: SvgPicture.asset(
                            ImageConstant.menu,
                            width: 30,
                          ),
                        ),
                      ),
                      const Text(
                        "Course Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Container(
                        padding: const EdgeInsets.all(6),
                        child: Center(
                          child: SvgPicture.asset(
                            ImageConstant.cart,
                            width: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SizedBox(
                    width: SizeUtils.width,
                    child: SingleChildScrollView(
                      child: GetBuilder<CourseDetailsController>(
                        builder: (controller) {
                          final courseDetails = controller.courseDetails;
                          final isLoading = controller.inProgress;

                          if (isLoading) {
                            return const Center(child: CircularProgressIndicator());
                          }

                          return Container(
                            padding: EdgeInsets.all(15.h),
                            decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL20,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 4.v),
                                _buildStacksciencestu(context),
                                SizedBox(height: 52.v),
                                Text(
                                  courseDetails.data?.title ?? "Basic English Grammar Skill full Course",
                                  style: CustomTextStyles.titleMediumPoppinsOnPrimaryContainer,
                                ),
                                SizedBox(height: 8.v),
                                Container(
                                  width: 334.h,
                                  margin: EdgeInsets.only(right: 10.h),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: courseDetails.data?.subTitle ??
                                              "English course designed to teach kids how to speak English in real-life situations. Enroll now to keep your kids ahead with English Speak and Reading skills. ",
                                          style: theme.textTheme.bodySmall,
                                        ),
                                        TextSpan(
                                          text: "See more",
                                          style: CustomTextStyles.bodySmallGray500,
                                        )
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 3.v),
                                Row(
                                  children: [
                                    Text(
                                      "5.0",
                                      style: CustomTextStyles.labelLargeSemiBold,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 12.h,
                                        top: 4.v,
                                        bottom: 3.v,
                                      ),
                                      child: CustomRatingBar(
                                        initialRating: 5,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 6.h,
                                        top: 2.v,
                                      ),
                                      child: Text(
                                        "(25,00)",
                                        style: CustomTextStyles.labelMediumGray500,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 3.v),
                                Text(
                                  "9,591 students",
                                  style: theme.textTheme.labelMedium,
                                ),
                                SizedBox(height: 15.v),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Mentor ",
                                        style: CustomTextStyles.labelLargeGray700_1,
                                      ),
                                      TextSpan(
                                        text: "Ashutosh Pawar",
                                        style: CustomTextStyles.labelLargePrimary,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 10.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgAppointment,
                                      height: 12.adaptSize,
                                      width: 12.adaptSize,
                                      margin: EdgeInsets.only(bottom: 2.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        "Last update 06/2023 ${courseDetails.data?.updatedAt ?? ''}",
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgGroup1000005816,
                                      height: 15.v,
                                      width: 14.h,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        "English",
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 20.v),
                                Text(
                                  courseDetails.data?.price?.toString() ?? "BDT 7,600.00",
                                  style: theme.textTheme.titleLarge,
                                ),
                                SizedBox(height: 6.v),
                                _buildBuynow(context),
                                SizedBox(height: 15.v),
                                _buildRowaddtocart(context),
                                SizedBox(height: 17.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "What you’ll learn ",
                                    style: CustomTextStyles.titleSmallOnPrimaryContainer,
                                  ),
                                ),
                                SizedBox(height: 8.v),
                                _buildRowview(context, courseDetails.data!.learningTopic![0]),
                                SizedBox(height: 10.v),
                                _buildRowview(context, courseDetails.data!.learningTopic![1]),
                                SizedBox(height: 10.v),
                                _buildRowview(context, courseDetails.data!.learningTopic![2]),
                                SizedBox(height: 3.v),
                                Text(
                                  "Show more",
                                  style: CustomTextStyles.titleSmallPrimary,
                                ),
                                SizedBox(height: 38.v),
                                Text(
                                  "Course Curriculum ",
                                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                                ),
                                SizedBox(height: 26.v),
                                CustomDropDown(
                                  icon: Container(
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowdownGray700,
                                      height: 4.v,
                                      width: 9.h,
                                    ),
                                  ),
                                  hintText: "Section 1 -Basic knowledge",
                                  hintStyle: TextStyle(
                                      color: const Color(0xFFA335F3),
                                      fontSize: 12.fSize),
                                  items: dropdownItemList,
                                ),
                                SizedBox(height: 15.v),
                                CustomDropDown(
                                  icon: Container(
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowdownGray700,
                                      height: 4.v,
                                      width: 9.h,
                                    ),
                                  ),
                                  hintText: "Section 2 -How to Be More Polite with Your Words",
                                  items: dropdownItemList,
                                ),
                                SizedBox(height: 15.v),
                                CustomDropDown(
                                  icon: Container(
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowdownGray700,
                                      height: 4.v,
                                      width: 9.h,
                                    ),
                                  ),
                                  hintText: "Section 3 -How to Be More Polite with Your Words",
                                  items: dropdownItemList1,
                                ),
                                SizedBox(height: 15.v),
                                CustomDropDown(
                                  icon: Container(
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowdownGray700,
                                      height: 4.v,
                                      width: 9.h,
                                    ),
                                  ),
                                  hintText: "Section 4 -How to Be More Polite with Your Words",
                                  items: dropdownItemList2,
                                ),
                                SizedBox(height: 30.v),
                                _buildMore(context),
                                SizedBox(height: 16.v),
                                Text(
                                  "This course includes",
                                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                                ),
                                SizedBox(height: 11.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgYoutube,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "34.5 total hours on-demand video",
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 14.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgDocument,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "Support Files",
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 12.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgBook,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(top: 1.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "10 Articles",
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 13.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgInfinity,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(top: 1.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "Full lifetime access",
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgSmartphone,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "Access on mobile, desktop, and TV",
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 15.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCertificate,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(bottom: 2.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "Certificate of Completion",
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 86.v),
                                Text(
                                  "Requirements",
                                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 80),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 7,
                                        width: 7,
                                        margin: const EdgeInsets.symmetric(vertical: 12),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 250,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 14),
                                          child: Text(
                                            courseDetails.data?.requirements ??
                                                "Must be familiar with the basics of Python",
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.labelLarge,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 24),

                                Text(
                                  "Description",
                                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                                ),
                                SizedBox(height: 8.v),
                                Container(
                                  width: 305.h,
                                  margin: EdgeInsets.only(right: 39.h),
                                  child: Text(
                                    courseDetails.data?.description ??
                                        "Learn Django From Scratch  Gain Essential\nSkills To Apply For Junior Django Developer\nPositions",
                                    maxLines: 20,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleSmall!.copyWith(
                                      height: 1.43,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15.v),
                                Container(
                                  width: 303.h,
                                  margin: EdgeInsets.only(right: 41.h),
                                  child: Text(
                                    "Learn Django Right From The Basic Like\nCreating A Django Project, Understanding\nModels, Making Migrations,Running Django\nApplications On Local Server",
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleSmall!.copyWith(
                                      height: 1.43,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                Text(
                                  "Show more",
                                  style: CustomTextStyles.titleSmallPrimary,
                                ),
                                const SizedBox(
                                  height: 700,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}

Widget _buildStacksciencestu(BuildContext context) {
  return SizedBox(
    height: 160.v,
    width: 345.h,
    child: Stack(
      alignment: Alignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgScienceStudyC,
          height: 160.v,
          width: 239.h,
          radius: BorderRadius.circular(
            8.h,
          ),
          alignment: Alignment.centerRight,
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 160.v,
            width: 345.h,
            padding: EdgeInsets.symmetric(
              horizontal: 149.h,
              vertical: 60.v,
            ),
            decoration: AppDecoration.gradientPrimaryToTeal.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup34454,
                  height: 2.v,
                  width: 30.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(14.h),
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget _buildBuynow(BuildContext context) {
  return CustomElevatedButton(
    height: 46.v,
    text: "Buy now",
    buttonTextStyle: CustomTextStyles.titleMediumPoppins,
  );
}

Widget _buildAddtocart(BuildContext context) {
  return Expanded(
    child: CustomOutlinedButton(
      text: "Add to cart",
      margin: EdgeInsets.only(right: 7.h),
      buttonTextStyle: CustomTextStyles.labelLargePrimary_1,
    ),
  );
}

Widget _buildAddtowishlist(BuildContext context) {
  return Expanded(
    child: CustomOutlinedButton(
      text: "Add to wishlist",
      margin: EdgeInsets.only(left: 7.h),
      buttonTextStyle: CustomTextStyles.labelLargePrimary_1,
    ),
  );
}

Widget _buildRowaddtocart(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [_buildAddtocart(context), _buildAddtowishlist(context)],
  );
}

Widget _buildRowview(BuildContext context, String text) {
  return Padding(
    padding: EdgeInsets.only(right: 22.h),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 5.adaptSize,
          width: 5.adaptSize,
          margin: EdgeInsets.only(
            top: 8.v,
            bottom: 46.v,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(
              2.h,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 305.h,
            margin: EdgeInsets.only(left: 12.h),
            child: Text(
              text,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall!.copyWith(
                height: 1.43,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget _buildMore(BuildContext context) {
  return CustomOutlinedButton(
    text: "16 more sections",
    buttonTextStyle: CustomTextStyles.labelLargePrimary_1,
  );
}
