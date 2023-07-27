import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Constants {
  static double cardElevation = 5;
  static double _screenWidth = 0;
  static bool isType = false;
  static bool isPlatformType = false;

  static bool isWebPlatformTypeWidth() {
    try {
      if (defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.android) {
        isPlatformType = true;
      } else if (defaultTargetPlatform == TargetPlatform.linux ||
          defaultTargetPlatform == TargetPlatform.macOS ||
          defaultTargetPlatform == TargetPlatform.windows) {
        isPlatformType = false;
      } else {
        isPlatformType = false;
      }
    } catch (e) {
      isPlatformType = false;
    }
    return isPlatformType;
  }

  static bool isWebPlatformType(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    try {
      isType = Constants.isWebPlatformTypeWidth();
      if (!isType) {
        if (_screenWidth > 820) {
          isType = false;
        } else {
          isType = true;
        }
      }
    } catch (e) {
      isPlatformType = false;
    }
    return isType;
  }


  static const String jsonStr = '''
{
    "user_details": {
        "user_name": "안녕 나 응애",
        "user_image": "",
        "height": "165cm",
        "weight": "53kg",
        "post_time": "1일전"
    },
    "post_details": {
        "title": "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
        "description": "지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~\\n혹시 어떤 상품이 제일 괜찮았어?\\n\\n후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이\\n제일 재밌었다던데 맞아???\\n\\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가\\n아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에\\n있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!",
        "tag": ["#2023", "#TODAYISMONDAY", "#TOP", "#POPS!", "#WOW", "#ROW"],
        "image": "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
        "likes_total": 5,
        "message_total": 5,
        "comments": [
            {
                "user_details": {
                    "user_name": "안녕 나 응애",
                    "user_image": "",
                    "height": "165cm",
                    "weight": "53kg",
                    "post_time": "1일전"
                },
                "comment": {
                    "message": "어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭\\n우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도\\n아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다\\n괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니\\n꼭 봐주세용~!",
                    "likes_total": 4,
                    "message_total": 5
                },
                "replies": [
                    {
                        "user_details": {
                            "user_name": "ㅇㅅㅇ",
                            "user_image": "",
                            "height": "165cm",
                            "weight": "53kg",
                            "post_time": "1일전"
                        },
                        "reply": {
                            "message": "오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다",
                            "likes_total": 4
                        }
                    }
                ]
            }
        ]
    }
}
''';

}
