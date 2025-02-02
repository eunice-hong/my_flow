import 'package:eunice_entity/src/sequence/apparatus.dart';

/// 동작 정보입니다.
class Movement {
  /// 동작 정보를 생성합니다.
  const Movement({
    required this.name,
    required this.target,
    required this.level,
    required this.count,
    required this.duration,
    required this.description,
    required this.apparatuses,
  });

  /// 동작 이름	시퀀스에 포함된 동작의 이름.	“플랭크”, “런지”, “푸시업”
  final String name;

  /// 목표 부위	시퀀스가 집중하는 신체 부위.	“복부”, “허리”, “전신”
  final List<String> target;

  /// 레벨	시퀀스의 난이도를 나타냄.	“초급”, “중급”, “고급”
  final String level;

  /// 반복 횟수	각 동작의 반복 횟수.	“10회”, “15회”
  final int count;

  /// 시간	특정 동작을 유지해야 하는 시간.	“30초”, “1분”
  final int duration;

  /// 시퀀스 설명/메모	시퀀스나 동작에 대한 추가 설명 또는 참고 사항.	“자세에 집중할 것”, “호흡 유지”
  final String description;

  /// 사용 장비	시퀀스에 필요한 도구 또는 장비.	“매트”, “필라테스 링”, “볼”
  final List<Apparatus> apparatuses;
}
