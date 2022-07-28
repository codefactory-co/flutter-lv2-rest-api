import 'package:actual/common/const/colors.dart';
import 'package:flutter/material.dart';

class RatingCard extends StatelessWidget {
  // NetworkImage
  // AssetImage
  //
  // CircleAvatar
  final ImageProvider avatarImage;

  // 리스트로 위젯 이미지를 보여줄때
  final List<Image> images;

  // 별점
  final int rating;

  // 이메일
  final String email;

  // 리뷰 내용
  final String content;

  const RatingCard(
      {required this.avatarImage,
      required this.images,
      required this.rating,
      required this.email,
      required this.content,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Header(
          avatarImage: avatarImage,
          email: email,
          rating: rating,
        ),
        _Body(),
        _Images(),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  final ImageProvider avatarImage;
  final String email;
  final int rating;

  const _Header({
    required this.avatarImage,
    required this.rating,
    required this.email,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 12.0,
          backgroundImage: avatarImage,
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Text(
            email,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ...List.generate(
          5,
          (index) => Icon(
            index < rating ? Icons.star : Icons.star_border_outlined,
            color: PRIMARY_COLOR,
          ),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _Images extends StatelessWidget {
  const _Images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
