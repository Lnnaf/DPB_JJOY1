import 'package:faker/faker.dart';

import '../models/herotype.dart';
import '../models/news.dart';

class FakeDataUtility {
  var fakerData = new Faker();
  List<String> getHightLights() {
    List<String> list = [
      fakerData.image
          .image(width: 400, height: 180, keywords: ['news'], random: true),
      fakerData.image
          .image(width: 400, height: 180, keywords: ['news'], random: true),
      fakerData.image
          .image(width: 400, height: 180, keywords: ['news'], random: true),
      fakerData.image
          .image(width: 400, height: 180, keywords: ['news'], random: true),
      fakerData.image
          .image(width: 400, height: 180, keywords: ['news'], random: true),
      fakerData.image
          .image(width: 400, height: 180, keywords: ['news'], random: true),
    ];
    list.forEach((element) {
      print("[LOGS]" + element);
    });
    return list;
  }

  String getImageUrl() {
    print("=======================");
    return Faker()
        .image
        .image(width: 400, height: 180, keywords: ['car'], random: true);
  }

  List<News> getNews() {
    print("=======================" + getImageUrl());
    return [
      News(Faker().lorem.word(), Faker().lorem.sentence(), getImageUrl(),
          Faker().date.time(), Faker().person.name()),
      News(Faker().lorem.word(), Faker().lorem.sentence(), getImageUrl(),
          Faker().date.time(), Faker().person.name()),
      News(Faker().lorem.word(), Faker().lorem.sentence(), getImageUrl(),
          Faker().date.time(), Faker().person.name()),
      News(Faker().lorem.word(), Faker().lorem.sentence(), getImageUrl(),
          Faker().date.time(), Faker().person.name()),
      News(Faker().lorem.word(), Faker().lorem.sentence(), getImageUrl(),
          Faker().date.time(), Faker().person.name()),
      News(Faker().lorem.word(), Faker().lorem.sentence(), getImageUrl(),
          Faker().date.time(), Faker().person.name()),
      News(Faker().lorem.word(), Faker().lorem.sentence(), getImageUrl(),
          Faker().date.time(), Faker().person.name()),
      News(Faker().lorem.word(), Faker().lorem.sentence(), getImageUrl(),
          Faker().date.time(), Faker().person.name()),
    ];
  }

  List<HeroTypeFilter> getHeroTypeFilter() {
    return [
      HeroTypeFilter('XẠ THỦ', false),
      HeroTypeFilter('ĐẤU SĨ', false),
      HeroTypeFilter('SÁT THỦ', false),
      HeroTypeFilter('PHÁP SƯ', false),
      HeroTypeFilter('TRỢ THỦ', false),
      HeroTypeFilter('ĐỠ ĐÒN', false),
    ];
  }
}
