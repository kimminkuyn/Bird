import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '백과 새전',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('백과 새전'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add your code here
            },
          ),
          IconButton(
            onPressed: () {
              // Add your code here
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/mainLogo.png',
              width: 1280,
              height: 720,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OneScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                    return null; // Use the default button color
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    }
                    return null; // Use the default button color
                  },
                ),
              ),
              child: Text('다음'),
            ),
            OutlinedButton(
              onPressed: () {
                // Add your code here
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                    return null; // Use the default button color
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    }
                    return null; // Use the default button color
                  },
                ),
              ),
              child: Text('뒤로'),
            ),
            TextButton(
              onPressed: () {
                // Add your code here
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                    return null; // Use the default button color
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    }
                    return null; // Use the default button color
                  },
                ),
              ),
              child: Text('처음으로'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/yuri.jpg'),
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/hon.jpg'),
                ),
              ],
              accountName: const Text('김민균'),
              accountEmail: const Text('alsrbs49@naver.com'),
              onDetailsPressed: () {
                // Add your code here
              },
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent[200],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              iconColor: Colors.lightBlueAccent,
              focusColor: Colors.lightBlueAccent,
              title: const Text('홈'),
              onTap: () {
                // Add your code here
              },
              trailing: const Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              iconColor: Colors.lightBlueAccent,
              focusColor: Colors.lightBlueAccent,
              title: const Text('봄'),
              onTap: () {
                // Add your code here
              },
              trailing: const Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              iconColor: Colors.lightBlueAccent,
              focusColor: Colors.lightBlueAccent,
              title: const Text('여름'),
              onTap: () {
                // Add your code here
              },
              trailing: const Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              iconColor: Colors.lightBlueAccent,
              focusColor: Colors.lightBlueAccent,
              title: const Text('가을'),
              onTap: () {
                // Add your code here
              },
              trailing: const Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              iconColor: Colors.lightBlueAccent,
              focusColor: Colors.lightBlueAccent,
              title: const Text('겨울'),
              onTap: () {
                // Add your code here
              },
              trailing: const Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
    );
  }
}

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('봄에 볼 수 있는 새'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 새로운 코드
            // 위젯들을 SingleChildScrollView로 감싸 스크롤 가능하도록 함
            // SingleChildScrollView는 자식들의 높이를 고려하여 스크롤 가능 영역을 생성함
            // 만약 자식들의 높이가 스크린보다 작으면 스크롤이 필요하지 않음
            Row(
              children: [
                Image.asset(
                  'images/gaegaebi.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '가가비 : 17.5~18cm의 소형 조류이다.\n몸윗면은 올리브 갈색으로 휘파람새와 비슷하지만 크기가 더 크고 지저귐이 다르다.\n흰 눈썹선은 눈 앞쪽이 보다 선명하다.\n다리는 어두운 청회색이다.\n앞가슴에 뚜렷하지 않은 가는 흑갈색 줄무늬가 있다.\n꼬리는 약간 길며 끝에 가는 흰 무늬가 있다.\n(깃의 마모에 의해 보이지 않는 경우도 많다.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/kkachi.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '까치 : 까마귀와 달리 덩치가 작다보니 콩콩 뛰면서 걸을 수 있다.\n '
                        '덕분에 까치는 민첩함을 살려서 자신보다 덩치가 큰 까마귀 뿐만 아니라, 한국의 대부분의 새를 몸싸움으로 이길 수 있다.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/kkoekkoli.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '꾀꼬리: 4~5월에 한국에 찾아와 널리 번식하고 봄과 여름에는 여러 곤충을 섭취한다.\n 5~7월에 나뭇가지에 둥지를 틀고 4개정도의 얼룩 알을 낳고 기른다.\n가을에는 버찌, 산딸기, 머루 등등의 열매를 먹다가 겨울이 되면 따뜻한 남쪽으로 떠난다.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/kkwong.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '꿩:4~5월에 한국에 찾아와 널리 번식하고 봄과 여름에는 여러 곤충을 섭취한다.\n5~7월에 나뭇가지에 둥지를 틀고 4개정도의 얼룩 알을 낳고 기른다.\n가을에는 버찌, 산딸기, 머루 등등의 열매를 먹다가 겨울이 되면 따뜻한 남쪽으로 떠난다.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/ttaogi.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '따오기 : 한국에서는 겨울에 찾아오는 철새였고 60년대까지도 흔하게 보였던 새였으나 1979년 판문점 비무장지대에서 목격된 것을 마지막으로 20년 이상 발견되지 않아 야생에서 사라졌다.\n 19세기 말 영국의 캠프벨은 ‘한국에서는 따오기가 겨울과 봄에 흔한 새이며 쉽게 총의 밥이 되는 새’라고 표현하였을 정도니 격세지감이다.\n 주된 먹이가 늪이나 논에서 자라는 벌레와 물고기라서 농약이 보편화되자 서식지 파괴로 인해 근현대 들어서 숫자가 급속도로 줄어들었던 것. 특히 농약이 따오기 몸 속에 쌓이면 알껍데기가 얇아지는 기형이 생기는데 이것이 번식에 치명적이라고 한다.\n 굉장히 흔했던 새인데 지금은 멸종 직전까지 가 있다는 데서 환경파괴에 대한 경각심을 불러일으킨다.17.5~18cm의 소형 조류이다.\n 몸윗면은 올리브 갈색으로 휘파람새와 비슷하지만 크기가 더 크고 지저귐이 다르다. 흰눈썹선은 눈 앞쪽이 보다 선명하다.\n 다리는 어두운 청회색이다.\n 앞가슴에 뚜렷하지 않은 가는 흑갈색 줄무늬가 있다.\n 꼬리는 약간 길며 끝에 가는 흰 무늬가 있다.\n(깃의 마모에 의해 보이지 않는 경우도 많다.)',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/ppeokkugi.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '뻐꾸기 : 주로 곤충류를 잡아먹고 산다.\n 과거에 비해 뻐꾸기들의 수가 계속 줄고 있으나, 2,500만에서 1억 마리 수준으로 워낙 많이 분포해서인지 보존 상태 등급은 아직도 LC이다.\n 가장 오래 산 것으로 기록된 뻐꾸기의 수명은 영국에서 살던 개체로, 6년 11개월 2일을 살았다고 한다.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TwoScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                primary: Colors.green,
                onPrimary: Colors.black,
              ),
              child: Text('다음', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20), // 버튼 간 여백
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OneScreen(),
                  ),
                );
              },style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              primary: Colors.green,
              onPrimary: Colors.white,
            ),
              child: Text('뒤로', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20), // 버튼 간 여백
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              child: Text('처음으로', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 40),
          ], //끝나는 자리
        ),
      ),
    );
  }
}
class TwoScreen extends StatelessWidget {
  const TwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('여름에 볼 수 있는 새'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 새로운 코드
            // 위젯들을 SingleChildScrollView로 감싸 스크롤 가능하도록 함
            // SingleChildScrollView는 자식들의 높이를 고려하여 스크롤 가능 영역을 생성함
            // 만약 자식들의 높이가 스크린보다 작으면 스크롤이 필요하지 않음
            Row(
              children: [
                Image.asset(
                  'images/jebi.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '제비 : 날개길이 11-12cm, 꼬리길이 7-10cm, 몸무게 12-22g 정도이다.\n 제비의 등은 금속성 광택이 나는 청색, 가슴은 밤색이며, 꼬리는 깊게 패여 있다.\n '
                        '한국에서 흔히 볼 수 있는 여름새로, 이동할 때나 번식 초기에는 암수 또는 단독으로 생활하나 번식이 끝나면 가족과 함께 무리를 짓고 거의 땅으로 내려오지 않는다.\n '
                        '날아다닐 때는 날개를 펄럭이기도 하고 날개를 멈추고 미끄러지듯이 날기도 한다.\n '
                        '번식이 끝난 6-10월 사이에는 평지의 배밭이나 갈밭을 잠자리로 하며, 해가 진 후 수천 또는 수만 마리가 무리를 지어 모여든다.\n'
                        ' 과거에 제비는 동굴에서 서식하였지만, 현재에는 인가 또는 건축물의 적당한 부분이나 다리 등에 둥지를 짓고 산다. 둥지는 보통 한 집에 한 개이고 매년 같은 둥지를 보수해서 사용한다.\n'
                        ' 귀소성이 강하여, 매년 같은 지방에 돌아오는 예가 많다. 산란기는 4-7월경이며, 한배에 3-7개의 알을 낳는다. 연 2회 번식하며 2회째의 산란은 1회의 새끼가 떠난 후 12-16일경에 이루어진다.\n'
                        ' 새끼는 알을 품은 후 13-18일 만에 부화하고 그 후 20-24일이면 둥지를 떠난다. 암수가 함께 새끼를 기른다.\n'
                        ' 먹이는 파리·딱정벌레·매미·날도래·하루살이·벌·잠자리 등의 날아다니는 곤충 등이다. 먹이활동은 둥지에서 반경 500m내에서 보통 이루어진다',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/bluebird.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '파랑새 : 주로 큰 나무가 있는 활엽수나 혼효림, 도시공원과 농경지 부근에서 생활한다.\n'
                        ' 나무 위에서 생활하며 날아다니는 곤충을 잡아먹으며 침엽수나 낙엽 활엽수, 노목의 줄기에 있는 썩은 구멍이나 딱따구리의 낡은 둥지를 이용해서 번식한다.\n'
                        ' 5-7월에 3-5개의 알을 낳는데, 알은 둥근 모양으로 순백색이며 얼룩무늬가 없다. 세종특별자치시의 시조이기도 하다..',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/baeglo.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '백로 : 해안이나 습지에 서식하며, 물고기, 개구리, 곤충 등을 잡아먹고,\n'
                        ' 드물게 쥐 같은 조그만 설치류나 뱁새, 참새같은 작은 새, 뱀같은 파충류 등을 잡아먹으며\n'
                        ', 배가 고프면 오리과에 속하는 물새같은 새의 새끼들도 잡아먹는다. 집단으로 번식하며 알 3~7개를 낳는다. 극지방 등 일부 지역을 제외한 전세계에 분포한다.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/palsaegjo.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '팔색조 : 산란기는 5-7월경이며 한배에 4-6개의 알을 낳는다. 알은 크림색 또는 잿빛을 띤 흰색 바탕에 엷은 자색빛 갈색과 잿빛 쥐색의 얼룩무늬가 있다.\n 암컷이 새끼를 품는 중에 위험을 느낄 때에는 둥지의 출입구를 잎이 붙어 있'
                        '는 나뭇가지로 가리거나 쇠똥을 입구에 박아 두는 습관이 있다.\n 암컷이 새끼에게 지렁이등의 먹이를 먹이며 수컷은 경계만 한다. 우리나라에서는 천연기념물 제204호로 지정하여 보호하고 있다.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/gaegaebi.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '가가비 : 17.5~18cm의 소형 조류이다. 몸윗면은 올리브 갈색으로 휘파람새와 비슷하지만 크기가 더 크고 지저귐이 다르다. 흰 눈썹선은 눈 앞쪽이 보다 선명하다. 다리는 어두운 청회색이다. 앞가슴에 뚜렷하지 않은 가는 흑갈색 줄무늬가 있다. 꼬리는 약간 길며 끝에 가는 흰 무늬가 있다.(깃의 마모에 의해 보이지 않는 경우도 많다.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/hwanglo.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '황로(黃鷺, 학명: Bubulcus coromandus)는 백로과의 새이다. 몸길이는 약 51cm로 빛깔은 흰 깃털과 주황색 깃털이 섞여 있으나, 주황색 깃털의 비중이 크다.\n 습지나 목초지, 습지 주변의 숲 등에 서식하며 곤충·개구리·파충류·물고기·새우·쥐 등을 잡아먹는다. 푸른빛을 띤 알을 3-5개 낳으며 수십에서 수백 마리가 무리를 지어 번식한다.\n파키스탄부터 오스트레일리아를 포함해 넓은 지역에 걸쳐 분포한다.\n한반도에서는 여름에 볼 수 있는 여름철새이다. 과거에는 Western Cattle Egret(Bubulcus ibis)의 아종으로 보았으나 최근에는 별개의 종으로 분류하고 있다.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/sotbueong-i.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '솥부엉이 : 1982년 11월 4일 천연기념물 제324-3호로 지정되었다.\n 2018년 10월 31일 문화재청은 황조롱이에 대한 천연기념물(동물) 현상변경 허가권한(죽은 것에 대한 매장 또는 소각하는 행위의 허가 및 그 취소)을 특별자치시장, 특별자치도지사, 시장·군수·구청장에게 위임하였다',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThreeScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                primary: Colors.green,
                onPrimary: Colors.black,
              ),
              child: Text('다음', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20), // 버튼 간 여백
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TwoScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                primary: Colors.green,
                onPrimary: Colors.white,
              ),
              child: Text('뒤로', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20), // 버튼 간 여백
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              child: Text('처음으로', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class ThreeScreen extends StatelessWidget {
  const ThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('가을에 볼 수 있는 새'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 새로운 코드
            // 위젯들을 SingleChildScrollView로 감싸 스크롤 가능하도록 함
            // SingleChildScrollView는 자식들의 높이를 고려하여 스크롤 가능 영역을 생성함
            // 만약 자식들의 높이가 스크린보다 작으면 스크롤이 필요하지 않음
            Row(
              children: [
                Image.asset(
                  'images/multtesae.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '물떼새 : 악어새라 불리는 악어물떼새 혹은 이집트물떼새. 악어와 공생관계로 잘못 알려졌다.\n악어는 평생 50회 이상에 걸쳐 이빨 3000여 개를 갈기에 악어새 같은 치과 의사는 불필요하며, 악어새가 악어 입에 들어가는 건 단순한 자살행위일 뿐이다. 악어새 입장에서도 악어새의 주식은 벌레와 식물의 씨앗이므로, 악어의 이빨에 남은 고기조각을 노릴 이유가 없다.\n현재는 갯벌 간척 사업으로 인해 수가 점점 줄고 있고 검은머리물떼새는 멸종 위기종이다.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/ulsae.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '울새 : 참새목 딱새과의 소형 조류.\n우리 나라에서는 나그네새이다. 봄에는 5월 초순에서 하순까지 가을에는 10월~11월 때 관찰할 수 있다. 중국 남부, 베트남, 태국에서 겨울을 난다.\n영국의 국조이다. 1937~56년 영국 파딩(1/4페니=1/960파운드) 주화의 도안이었다.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/doyosae.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '도요새: 도요목 도요과 조류의 총칭.\n몸길이는 12~61 cm로 다양하다. 날개는 길지만 꼬리는 짧은 편이다. 부리는 길고 곧거나 위 또는 아래로 굽었다.\n종류에 따라 다리와 목은 길기도 하고 짧기도 하다. 위쪽은 갈색이나 회색이고 아래쪽은 흰색이며 몸 전체에 줄무늬 또는 점무늬가 있다.\n갯벌이나 습지 등에 서식하면서 주로 갑각류, 조개 등 무척추동물을 잡아먹는다.\n둥지는 땅 위에 지으며 알 2~4개를 낳는다. 도요과는 전 세계에 흔하게 서식하며 알려진 바로는 13속 85종이 있다.\n한국에는 36종이 알려졌는데, 겨울철새 또는 나그네새이다.\n고사성어 어부지리의 고사에서 조개와 싸우다가 어부에게 함께 잡히는 것으로 등장한다\n영명이 snipe인 데서 알 수 있듯이 저격수(Sniper)의 유래가 된 새이다. 저격수 참조.친척으로는 갈매기와 바다오리가 있다.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/hingdungsae.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '힝둥새: 힝둥새(영어: olive-backed pipit, 학명: Anthus hodgsoni 안트후스 호드그소니[*])는 참새목 할미새과에 속하는 약 16cm의 새이다.\n참새과에 속하며 학명은 Anthus hodgsoni이다. 몸길이는 약 15cm로 등은 갈색에 검은색 줄무늬가 있으며, 배는 크림빛, 황갈색이고 가슴과 옆구리에 넓은 검은색 줄무늬가 있다. 탁 트인 평지에 서식하며 여름에는 주로 곤충을 먹으며, 가을과 겨울에는 풀씨나 그 밖의 다른 열매를 먹는다.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/nolangttagsae.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '노랑딱새 : 턱밑과 멱, 윗가슴이 오렌지빛이 도는 갈색을 띄고 있는 노랑닥새는 산지 교목림에 서식하며, 곤충류를 즐겨 먹습니다. 노랑딱새는 구복구 동부와 시베리아 등지에 분포하다가 겨울에는 동남아시아와 보르네오섬까지 내려가 겨울을 납니다.\n 한국에서는 봄과 겨울에 매우 흔하게 볼 수 있는 나그네새입니다.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/geom-eungaseummulttesae.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '검은가슴물떼새 : 떼를 지어 다니며 곤충, 지렁이, 열매 등을 먹는 검은감슴물떼새는 논, 호수, 습지, 간석지 등지에 200~300마리씩 무리지어 내려앉는 나그네새입니다.\n 알레스카, 시베리아, 북아메리카에서 번시하고 동남아시아, 남아메리카, 오스트레일리아에서 겨울을 납니다\n 한국에는 3~5월과 8~11월에 지나갑니다. 최근에는 환경 오염으로 인해보기 힘든 새이기도 합니다.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FourScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                primary: Colors.green,
                onPrimary: Colors.black,
              ),
              child: Text('다음', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20), // 버튼 간 여백
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TwoScreen(),
                  ),
                );
              },style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              primary: Colors.green,
              onPrimary: Colors.white,
            ),
              child: Text('뒤로', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20), // 버튼 간 여백
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              child: Text('처음으로', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 40),
          ], //끝나는 자리
        ),
      ),
    );
  }
}

class FourScreen extends StatelessWidget {
  const FourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('겨울에 볼 수 있는 새'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 새로운 코드
            // 위젯들을 SingleChildScrollView로 감싸 스크롤 가능하도록 함
            // SingleChildScrollView는 자식들의 높이를 고려하여 스크롤 가능 영역을 생성함
            // 만약 자식들의 높이가 스크린보다 작으면 스크롤이 필요하지 않음
            Row(
              children: [
                Image.asset(
                  'images/doesae.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '되새 : 16.5cm의 소형 조류이다. 다른 종과 쉽게 구별된다. 암컷은 머리옆선이 흑갈색이다. 옆목은 회색 기운이 강하다. 꼬리가 뾰족하다. 날 때 허리가 폭 넓은 흰색으로 보인다. 부리는 검은색 또는 노란색이다.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/milhwabuli.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '밀화부리 : 밀화부리는 참새목 되새과의 조류로 아종은 총 2개로 나뉜다. 고유어로 고지새라고도 부른다.\n 밀화부리란 이름에서 밀화(蜜花)란 노란색 호박(琥珀)을 가리킨다. 부리가 마치 노란 보석 호박처럼 생겼다고 밀화부리이다.\n크기는 19~20cm로 작은 편이다. 부리는 육중하며, 큰부리밀화부리가 유사종이다. 암컷은 몸이 전체적으로 연한 갈색이며, 수컷은 머리에 검은색 광택이 있다. 어린새도 미미하긴 하지만 암수 구별이 가능하다. 다만, 꼬리 끝의 검은색이 성조보다 연하고 흐리다.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/sansae.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '산새 : 산에 주로 서식하는 새. 산에 농장을 지어 기르는 가금류는 일반적으로 제외한다.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/won-ang.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '원앙 : 원앙(鴛鴦)은 기러기목 오리과 원앙속에 속하는 조류로, 천연기념물 제327호이다.\n 천연기념물이지만 환경 적응력은 준수한 편이라 개체수가 상당히 많아 호수나 하천에서 흔히 보인다.\n 참고로 지정된 이유는 예로부터 백년해로를 상징하는 문화적 가치가 있는 동물이라서다.[1] 이 속에 속하는 종으로 원앙과 아메리카원앙이 있다.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/soeoli.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '쇠오리 :  쇠오리(Common Teal) 은 오리과에 속하는 동물이다.\n회색, 물오리색, 적갈색, 순백색, 흑색 등의 알록달록한 몸을 가졌다.\n저수지, 호수, 강, 하천 등에 산다.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/cheondung-oli.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '천둥오리 : 오리과의 철새로, 한국에서는 본래 겨울철새였으나, 현재는 지구 온난화의 영향으로 텃새화되었다.\n 크기는 집오리보다 작은 50~70cm 정도이다. 수컷은 머리의 색깔이 광택이 있는 녹색이며 흰색의 가는 목테가 있어 흐린 갈색의 암컷과 쉽게 비교가 된다.\n 그러나 이는 번식깃으로, 번식기가 끝나면 깃털이 다 빠져서 암컷과 똑같은 색으로 변한다. 수컷의 꽁지깃은 흰색이지만 가운데 꽁지깃은 검은색이며 부리는 노란색이다',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/mulsae.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '물새 : 물새 또는 수조(水鳥)는 물가에 서식하는 조류의 총칭이다. 강, 논, 호수, 습지, 해안 등에 서식한다.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  'images/kkamagwi.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '까마귀 : 대한민국에서 가장 흔하게 볼 수 있는 종은 큰부리까마귀(Corvus macrorhynchos)로, 도심에서도 연중 볼 수 있다. 그 외에 떼까마귀(Corvus frugilegus), 갈까마귀(Coloeus dauuricus) 등이 있는데, 떼까마귀는 주로 농촌 지방에 겨울철새로 찾아오며,\n 하늘이 까맣게 될 정도로 큰 무리를 지어 돌아다닌다. 갈까마귀는 주로 떼까마귀 무리에 소수가 섞여서 돌아다닌다. 이 네 종 이외의 까마귀류는 희귀한 편이다.\n 까치 또한 까마귀과에 포함된다.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),Spacer(), // 버튼 위 여백 적용
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThreeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    primary: Colors.green,
                    onPrimary: Colors.white,
                  ),
                  child: Text('뒤로', style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 20), // 버튼 간 여백
                TextButton(
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  ),
                  child: Text('처음으로', style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}