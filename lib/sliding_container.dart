import 'package:app/sliding_card.dart';
import 'package:flutter/material.dart';

import 'movie.dart';

class SlidingContainer extends StatefulWidget {
  @override
  _SlidingContainerState createState() => _SlidingContainerState();
}

class _SlidingContainerState extends State<SlidingContainer> {
  PageController pageController;
  double pageOffset = 0;

  List<Movie> movies = [
    Movie(
      name: '怒火・重案',
      intro: '重案组布网围剿国际毒枭，突然杀出一组蒙面悍匪 '
          '“黑吃黑”，更冷血屠杀众警察。重案组督察张崇邦（甄子丹 饰）亲睹战友被杀，深入追查发现，悍匪首领竟是昔日战友邱刚敖（谢霆锋 饰）。',
      poster: 'assets/poster_nuhuo.webp',
      date: '2021-07-30',
      price: '19.99',
    ),
    Movie(
      name: '沙丘・Dune',
      intro: '电影《沙丘》为观众呈现了一段神秘而感人至深的英雄之旅。天赋异禀的少年保罗・厄崔迪被命运指引，为了保卫自己的家族和人民，决心前往'
          '浩瀚宇宙间最危险的星球，开启一场惊心动魄的冒险。与此同时，各路势力为了抢夺这颗星球上一种能够释放人类最大潜力的珍贵资源而纷纷加入战场。最终，唯有那些能够战胜内心恐惧的人才能生存下去。',
      poster: 'assets/poster_dune.jpg',
      date: '2021-09-03',
      price: '29.99',
    ),
    Movie(
      name: '速度与激情 9',
      intro:
      '“唐老大” 多姆・托莱多（范・迪塞尔 饰）与莱蒂（米歇尔・罗德里格兹 饰）和他的儿子小布莱恩，过上了远离纷扰的平静生活。然而他们也知道，安宁之下总潜藏着危机。这一次，为了保护他所爱的人，唐老大不得不直面过去。他和伙伴们面临的是一场足以引起世界动荡的阴谋，以及一个前所未遇的一流杀手和高能车手。而这个名叫雅各布（约翰・塞纳 饰）的人，恰巧是多姆遗落在外的亲弟弟。',
      poster: 'assets/poster_speed9.jpeg',
      date: '2021-05-21',
      price: '9.99',
    ),
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.84);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: PageView(
        controller: pageController,
        children: List.generate(movies.length, (index) {
          return SlidingCard(
            movie: movies[index],
            offset: pageOffset - index,
          );
        }),
      ),
    );
  }
}




