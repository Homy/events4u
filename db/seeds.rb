# ruby encoding: utf-8

#event_types
['Концерт', 'Флеш-моб', 'Хода', 'Акція протесту', 'Мітинг'].each do |tn|
  EventType.find_or_create_by({name: tn})
end

#hosts
hosts_list = [
    ['Правий Сектор', '+38 (096) 388-35-11', 'psector@mail.ru', 'http://pravyysektor.info/', 'Україна', 'Тернопіль', 'Бандери,10/12', 'ПРАВИЙ СЕКТОР” – ВІЙСЬКОВО-ПОЛІТИЧНИЙ РУХ, ЩО СТАВИТЬ СОБІ ЗА МЕТУ УКРАЇНСЬКЕ НАЦІОНАЛЬНЕ ВИЗВОЛЕННЯ І ДЕРЖАВОТВОРЕННЯ.Місією руху є здобуття і розбудова Української Самостійної Соборної Держави – національної держави українців, шляхом національної революції. Провідником (лідером) руху є Дмитро Анатолійович Ярош.'],
    ['Опора', '+38 (044) 286 26 70', 'opora@lviv.in.ua', 'http://oporaua.org/', 'Україна', 'Київ', 'професора Підвисоцького 10/10', 'Громадянська мережа ОПОРА — це неурядова, позапартійна і фінансово незалежна всеукраїнська мережа громадських активістів. Ми об\'єдналися з метою активізації громадської участі в політичному процесі, шляхом вироблення і впровадження моделей впливу громадян на діяльність органів державної влади та місцевого самоврядування в Україні.'],
    ['Націона́льна спі́лка худо́жників Украї́ни', '+38 (096) 388-35-11 ', 'nshu@ukr.net', 'http://www.nshu.org.ua/', 'Україна', 'Львів', 'Липинського,10/12', 'Націона́льна спі́лка худо́жників Украї́ни (НСХУ) — всеукраїнська громадська творча організація професійних митців і мистецтвознавців. Це добровільне творче об\'єднання талановитих особистостей — живописців, графіків, скульпторів, майстрів декоративного мистецтва, мистецтвознавців, що генерують нові художні ідеї та проекти, осмислюють і сприяють творенню нашого життя за законами гармонії і краси.']
]
  hosts_list.each do |name, phone,email, url, country, city, street_address, about|
    Host.create(name: name, phone: phone, email: email, url: url, country: country, city: city, street_address: street_address, about: about )
  end

#places
places_list = [
    [ 'Шевченківський Гай', 'Україна', 'Львів', 'Чернеча Гора, 1', 'Шевче́нківський гай — етно-парк, музей просто неба у Львові.'],
    ['Проспект Свободи', 'Україна', 'Львів', 'Проспект Свободи', 'Центральна вулиця міста, з блекджеком, Оперою та дівчатами'],
    ['Високий замок', 'Україна', 'Львів', 'Високий Замок', 'Висо́кий За́мок (пол. Wysoki Zamek) — замок, збудований під керівництвом Короля Русі Лева Даниловича, потім — польського короля Казімєжа ІІІ на Замковій горі у Львові.']
]
places_list.each do |name, country, city, street_address, about|
  Place.create(name: name, country: country, city: city, street_address: street_address, about: about )
end

#events
 events_list = [
     ['Збережемо Львів', 4, 1, 2, 'www.oporaLviv.org.ua', '20-08-2015 12:00:00', '20-08-2015 15:00:00', 'Акція протесту проти незаконної забудови історичної частини Львова. Геть Садового !!!'],
     ['Смолоскипна хода на честь річниці подій під Крутами', 3, 2, 1, 'http://kruty.org.ua', '16-01-2016 20:00:00', '16-01-2016 21:00:00', 'Бій під Кру́тами — бій, що відбувся 16 (29) січня 1918 року на залізничній станції Крути під селищем Крути та поблизу села Пам\'ятне, за 130 кілометрів на північний схід від Києва. Цей бій тривав 5 годин між 4-тисячним підрозділом Червоної Гвардії під проводом есера Михайла Муравйова (згодом за свою жорстокість та свавілля страченого більшовиками) та загоном з київських курсантів і козаків "Вільного козацтва", що загалом нараховував близько чотирьох сотень вояків. У перебігу військових дій бій вирішального значення не мав, та у свідомості багатьох особливого значення набув завдяки героїзму української молоді. Особливо вразило сучасників поховання юнаків, які потрапили після бою в полон до більшовиків і у кількості 27 людей були ними страчені. На похороні у Києві біля Аскольдової могили голова Української Центральної Ради Михайло Грушевський назвав юнаків, які загинули в нерівній боротьбі, героями, а поет Павло Тичина присвятив героїчному вчинкові вірш «Пам\'яті тридцяти\». Десятиріччями історія бою або замовчувалася, або обростала міфами і вигадками, як у закордонній, так і у вітчизняній історіографії. 2006 року на місці бою встановлено пам\'ятник. З нагоди 80-ї річниці бою Монетний двір випустив в обіг пам\'ятну монету номіналом 2 гривні.'],
     ['Джаз Фест', 1, 2, 3, 'http://alfajazzfest.com/', '10-08-2015 15:00:00', '20-08-2015 15:00:00', 'Альфа Джаз Фест — міжнародний джазовий фестиваль, який щороку у червні проходить у Львові починаючи з 2011 року. Засновником фестивалю є російський мільярдер, співвласник консорціуму Альфа-Груп, уродженець Львова Михайло Фрідман']
]
events_list.each do |name, event_type_id, place_id, host_id, url, dateStart, dateEnd, about|
  Event.create(name: name, event_type_id: event_type_id, place_id: place_id, host_id: host_id, url: url, dateStart: dateStart, dateEnd: dateEnd, about: about)
end

#imported_events
events_list = [
    ['Зупинити незаконну забудову в історичній частині Львова', 4, 1, 2, 3, 'www.oporaLviv.org.ua', '20-08-2016 12:00:00', '20-08-2016 15:00:00', 'Акція протесту проти незаконної забудови історичної частини Львова. Геть кровосісь Садового !!!'],
    ['Геть порошенківську банду', 3, 2, 1, 8, 'http://prezident.gov.ua', '16-05-2016 20:00:00', '16-05-2016 21:00:00', 'Все що твориться останні два роки в Україні - продовження славних традицій Януковичо-Азарівської епохи. Прийшов час це припинити.']
]
events_list.each do |name, event_type_id, place_id, host_id, user_id, url, dateStart, dateEnd, about|
  ImportedEvent.create(name: name, event_type_id: event_type_id, place_id: place_id, host_id: host_id, user_id: user_id, url: url, dateStart: dateStart, dateEnd: dateEnd, about: about)
end