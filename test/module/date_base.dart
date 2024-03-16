// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:app/module/date_base.dart';
int selectIndex = -1;

class cars {
  int id;
  String name;
  double price;
  String complect;
  String discription;
  List<String> carsPhoto;
  String linkYoutube;

  cars(this.id, this.name, this.price, this.complect, this.discription,
      this.carsPhoto, this.linkYoutube);
}

List<cars> catalog_cars = [
  cars(
    1,
    "Lada VESTA",
    699900,
    "Standard",
    "Современный, рациональный, комфортный. Седан со вместительным багажником, который гармонично вписан в стремительную форму кузова. Как тот самый костюм, который подходит к любой фигуре. Как фильм, который видели все: всегда интересный и по-новому актуальный.",
    [

    ],
    "aBZfXiZBRTk",
  ),
  cars(
    2,
    "LADA XRAY",
    1106900,
    "Comfort Light",
    "Там, где кончается дорога, начинается настоящая жизнь. Это прекрасно знает автомобиль, заряженный энергией кроссовера. Энергией открывать, достигать, внушать уверенность каждым элементом дизайна. 198 миллиметров клиренса, прочный обвес кузова, рейлинги — это и функционал, и часть внедорожного образа.",
    [
      "lib/",
      "lib",
      "lib",
    ],
    "O_Dw-3NOzDk",
  ),
  cars(
    3,
    "Lada LARGUS",
    1300900,
    "Comfort",
    "Семейный, любимый, вместительный универсал LADA Largus стал еще удобней. Теплее зимой, эффективней в городе, тише и комфортней на шоссе. Современный интерьер и яркая внешность — это новый LADA Largus!",
    [
      "lib/image/largus/largus1.jpg",
      "lib/image/largus/largus2.jpg",
      "lib/image/largus/largus3.jpg",
    ],
    "6Obwpl3u7rg",
  ),
  cars(
    4,
    "Lada GRANTA",
    399920,
    "Classic",
    "Народный автомобиль стал ярче и привлекательнее: седан Granta в новом кузове получил черты современной ДНК стиля LADA.X-образная графика переднего бампера, выразительная светотехника, рельеф багажника и, конечно, множество практичных улучшений не оставят равнодушными почитателей бренда. В наших автосалонах новая модель доступна с автоматической и механической коробкой переключения передач.",
    [
      "lib/image/granta/granta1",
      "lib/imagelib/image/granta/granta2",
      "lib/image/lib/image/granta/granta3",
    ],
    "KbqMIcIRkDw",
  ),
  cars(
      5,
      "Lada NIVA LEGEND",
      1198900,
      "Classic",
      "Максимальную проходимость модели LADA Niva Legend в сочетании с дорожным комфортом обеспечивают следующие характеристики: Колеса с литыми дисками и шинами с активным грунтовым протектором.Самоблокирующиеся дифференциалы винтового типа в переднем и заднем мостах.Усиленный задний мост.Увеличенный дорожный просвет.",
      ["lib/image/niva/niva1",
        "lib/image/niva/niva2",
        "lib/image/niva/niva3",],
      "kuEOwvTmu74"
  ),
  cars(
    6,
    "LADA VESTA CROSS",
    1733900,
    "Life",
    "Уникальный дизайн LADA Vesta Cross новое поколение стал более энергичным. Развитый рельеф бамперов создает современный и динамичный образ автомобиля, а новая светодиодная оптика делает его по-настоящему заметным.",
    ["lib/image/",
    "lib/image/",
    "lib/image/",],
    "1XJTzt33pqM",
  ),
];
