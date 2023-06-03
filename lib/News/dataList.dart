import 'package:flutter/material.dart';
import 'package:radik_project/Theme.dart';

const List<Image> assetImages = <Image>[
  Image(image: NetworkImage('http://www.rsreu.ru/images/stories/cmtso/blagodarn23_hokkei1.jpg')),
  Image(image: NetworkImage('http://www.rsreu.ru/images/stories/cmtso/blagod23_olimpiada1.jpg')),
  Image(image: NetworkImage('http://www.rsreu.ru/images/stories/cmtso/blagodarn23_nalogovaya2.jpg')),
  Image(image: NetworkImage('http://www.rsreu.ru/images/stories/cmtso/blagod23_unarmiya1.jpg')),
  Image(image: NetworkImage('http://www.rsreu.ru/images/stories/seminar23_profsouz1.jpg')),
  Image(image: NetworkImage('http://www.rsreu.ru/images/stories/vospit/dron1.jpg')),
  Image(image: NetworkImage('http://www.rsreu.ru/images/stories/vospit/analitik_oblozhka.jpg')),
  Image(image: NetworkImage('http://www.rsreu.ru/images/stories/vospit/miss1.jpg')),
];

const List<Text> TextTitle = <Text>[
  Text('Благодарственное письмо филиала ПАО «Россети Центр и Приволжье» - «Рязаньэнерго»', textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
  Text('Благодарность от Организационного комитета Открытых международных студенческих Интернет-олимпиад',textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
  Text('Благодарность РГРТУ от УФНС по Рязанской области',textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
  Text('В сотрудничестве с  «ЮНАРМИЕЙ»',
      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
  Text('В РГРТУ проходит XV Общероссийский обучающий семинар для вузовского профактива',textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
  Text('Завершились соревнования «Дрон рейсинг» в РГРТУ',textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
  Text('VII Всероссийская Олимпиада по аналитике и проектированию информационных систем Аналитик-2023',textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
  Text('Красота с умом: в РГРТУ выбрали Мисс Радиовселенную 2023 ',textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
];

const List<Text> TextNews = <Text>[
  Text('Исполняющий обязанности заместителя генерального директора – директора филиала ПАО «Россети Центр и Приволжье» - «Рязаньэнерго» А.В. Звягинцев выразил благодарность ректору М.В. Чиркину и коллективу РГРТУ за содействие в проведении IX открытого турнира по хоккею «Россети Центр» и «Россети Центр и Приволжье», посвященного 78-летию Победы в Великой Отечественной войне.',
      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300)),
  Text('Организационный комитет Открытых международных студенческих Интернет-олимпиад выразил благодарность ректору и сотрудникам РГРТУ за организацию и проведение тура Интернет - олимпиады, преподавателям и научным руководителям - за подготовку студентов.',
      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300)),
  Text('Декан ИЭФ РГРТУ Горбова Ольга Юрьевна приняла участие в совещании руководителей высших учебных заведений Рязани с представителями Управления Федеральной налоговой службы по Рязанской области.',
      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300)),
  Text('31 мая в Рязанском гвардейском воздушно-десантном командном училище имени генерала армии В.Ф. Маргелова прошел городской юнармейский форум «Дистанция успеха 2022/2023».',
      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300)),
  Text('В соответствии с планом работы Центрального Совета Профсоюза образования в РГРТУ с 29 мая по 02 июня на базе ведомственной лаборатории по анализу коллективно-договорных актов и кафедры АСУ проходит XV Общероссийский обучающий семинар по проблемам разработки и заключения коллективного договора.',
      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300)),
  Text('25 мая на базе Радиоуниверситета по инициативе Министерства экономического развития Рязанской области прошли соревнования по пилотированию беспилотных летательных аппаратов. Участниками стали как опытные пилоты, так и новички, только начинающие свое знакомство с FPV. Молодые пилоты получили полезную информацию о БПЛА, а опытные демонстрировали свое мастерство в управлении квадрокоптером.',
      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300)),
  Text('17 мая в РГРТУ прошел финальный тур VII Всероссийской Олимпиады по аналитике и проектированию информационных систем Аналитик-2023. В Олимпиаде принимали участие студенты и курсанты 12 высших образовательных учреждений из 9 регионов Российской Федерации. В финальном туре приняли участие 53 команды  на 11 площадках, 15 команд из которых были из Радиоуниверситета.',
      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300)),
  Text('Участницы успешно прошли заочные этапы, включающие проверку спортивной подготовки, сообразительности и художественных навыков. Также для них были организованы мастер-классы по кулинарии и ораторскому искусству. На финале каждая из них представила себя в желаемом образе: гимнастка, звездница, балерина, певица, активистка и танцовщица.',
      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300)),
];