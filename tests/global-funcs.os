﻿///////////////////////////////////////////////////////////////////////
//
// Тест проверки поведения некоторых глобальных функций
// 
//
///////////////////////////////////////////////////////////////////////

Перем юТест;

////////////////////////////////////////////////////////////////////
// Программный интерфейс

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	
	юТест = ЮнитТестирование;
	
	ВсеТесты = Новый Массив;
	
	ВсеТесты.Добавить("ТестДолжен_ВидетьБулевоЗаполненным");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьПустыеСтрокиДатыЧислаНеопределено");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьНеПустыеСтрокиДатыЧисла");
	ВсеТесты.Добавить("ТестДолжен_РазличатьТекущийИСтартовыйСценарий");
	
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_УказаныОтдельныеСвойстваДляЗаполнения");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_УказаныСвойстваИсключения");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_НесуществующееСвойство");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_ДляТаблицыЗначений");
	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLСтрокаБулево");
	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLСтрокаСтрока");
	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLСтрокаЧисло");
	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLСтрокаДата");
	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLСтрокаДвоичныеДанные");
	ВсеТесты.Добавить("ТестДолжен_Проверить_XMLСтрокаСтрокаИзПеременной");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьЗаписьВBase64");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтениеИзBase64");
	
	ВсеТесты.Добавить("Тест_ДолженПроверитьМатематическиеФункции");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоФункцияМинСравниваетЧисла");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоФункцияМаксСравниваетЧисла");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоФункцияМинСравниваетСтроки");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоФункцияМаксСравниваетСтроки");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоФункцияМинНеСравниваетРазнотипныеЗначения");
	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоФункцияМаксНеСравниваетРазнотипныеЗначения");

	ВсеТесты.Добавить("Тест_ДолженПроверитьЧтоКопированиеФайлаПерезаписываетПриемник");
	ВсеТесты.Добавить("Тест_ДолженПроверитьСтрЧислоВхожденийВхожденийНет");
	ВсеТесты.Добавить("Тест_ДолженПроверитьСтрЧислоВхождений");
	
	Возврат ВсеТесты;
КонецФункции

// 
////////////////////////////////////////////////////////////////////

Процедура ТестДолжен_ВидетьБулевоЗаполненным() Экспорт
	юТест.ПроверитьИстину(ЗначениеЗаполнено(Истина), "Проверка для True");
	юТест.ПроверитьИстину(ЗначениеЗаполнено(Ложь), "Проверка для False");
КонецПроцедуры

Процедура ТестДолжен_ПроверитьПустыеСтрокиДатыЧислаНеопределено() Экспорт
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(Неопределено), "Проверка для Неопределено");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(""), "Проверка для """"");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(""   ""), "Проверка для ""   """);
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(" " + Символы.ПС + Символы.Таб + "   "), "Проверка для спецсимволов");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено('00010101'), "Проверка для Даты");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(0), "Проверка для 0");
	юТест.ПроверитьЛожь(ЗначениеЗаполнено(Новый Массив), "Проверка для коллекции");
КонецПроцедуры

Процедура ТестДолжен_ПроверитьНеПустыеСтрокиДатыЧисла() Экспорт
	юТест.ПроверитьИстину(ЗначениеЗаполнено("   Привет   "), "Проверка для строки");
	юТест.ПроверитьИстину(ЗначениеЗаполнено(ТекущаяДата()), "Проверка для Даты");
	юТест.ПроверитьИстину(ЗначениеЗаполнено(1000), "Проверка для Числа");
	М = Новый Массив;
	М.Добавить(1);
	юТест.ПроверитьИстину(ЗначениеЗаполнено(М), "Проверка для Коллекции");
КонецПроцедуры

Процедура ТестДолжен_РазличатьТекущийИСтартовыйСценарий() Экспорт
	
	Стартовый = Новый Файл(СтартовыйСценарий().Источник).Имя;
	Текущий = Новый Файл(ТекущийСценарий().Источник).Имя;
	
	юТест.ПроверитьРавенство(Стартовый, "testrunner.os");
	юТест.ПроверитьРавенство(Текущий, "global-funcs.os");
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя");
	
	ЗаполнитьЗначенияСвойств(Приемник, Источник);
	юТест.ПроверитьРавенство(Источник.Фамилия, Приемник.Фамилия);
	юТест.ПроверитьРавенство(Источник.Имя, Приемник.Имя);
	юТест.ПроверитьЛожь(Приемник.Свойство("Отчество"));
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_УказаныОтдельныеСвойстваДляЗаполнения() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя,Отчество");

	ЗаполнитьЗначенияСвойств(Приемник, Источник, "Фамилия,Имя");
	юТест.ПроверитьРавенство(Источник.Фамилия, Приемник.Фамилия);
	юТест.ПроверитьРавенство(Источник.Имя, Приемник.Имя);
	юТест.ПроверитьРавенство(Неопределено, Приемник.Отчество);
		
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_УказаныСвойстваИсключения() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя,Отчество");

	ЗаполнитьЗначенияСвойств(Приемник, Источник, , "Фамилия,Имя");
	юТест.ПроверитьРавенство(Неопределено, Приемник.Фамилия);
	юТест.ПроверитьРавенство(Неопределено, Приемник.Имя);
	юТест.ПроверитьРавенство(Источник.Отчество, Приемник.Отчество);
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_НесуществующееСвойство() Экспорт
	
	Источник = Новый Структура("Фамилия,Имя,Отчество", "Иванов", "Иван", "Иванович");
	Приемник = Новый Структура("Фамилия,Имя");
	
	Попытка
		ЗаполнитьЗначенияСвойств(Приемник, Источник, "НетТакогоСвойства", "Фамилия,Имя");
	Исключение
		Возврат;
	КонецПопытки;
	
	юТест.ПрерватьТест("Заполнение несуществующего свойства должно выдавать исключение, но не выдало");
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЗаполнитьЗначениеСвойств_ДляТаблицыЗначений() Экспорт
	
	Источник = Новый ТаблицаЗначений;
	Источник.Колонки.Добавить("Имя");
	Источник.Колонки.Добавить("Фамилия");
	
	Стр = Источник.Добавить();
	Стр.Имя = "Иван";
	Стр.Фамилия = "Иванов";
	
	Стр = Источник.Добавить();
	Стр.Имя = "Петр";
	Стр.Фамилия = "Петров";
	
	Приемник = Источник.СкопироватьКолонки();
	Для Каждого СтрИсточник Из Источник Цикл
		СтрПриемник = Приемник.Добавить();
		ЗаполнитьЗначенияСвойств(СтрПриемник, СтрИсточник);
	КонецЦикла;
	
	Для Сч = 0 По Источник.Количество() - 1 Цикл
		
		СтрИсточник = Источник[Сч];
		СтрПриемник = Приемник[Сч];
		
		юТест.ПроверитьРавенство(СтрИсточник.Имя, СтрПриемник.Имя, "Сравнение строки " + Сч + " - Имя");
		юТест.ПроверитьРавенство(СтрИсточник.Фамилия, СтрПриемник.Фамилия, "Сравнение строки " + Сч + " - Фамилия");
		
	КонецЦикла;
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLСтрокаБулево() Экспорт
	
	юТест.ПроверитьРавенство("true", XMLСтрока(Истина));
	юТест.ПроверитьРавенство("false", XMLСтрока(Ложь));
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLСтрокаСтрока() Экспорт
	
	юТест.ПроверитьРавенство("", XMLСтрока(""));
	юТест.ПроверитьРавенство("строка1", XMLСтрока("строка1"));
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLСтрокаСтрокаИзПеременной() Экспорт
	ПеременнаяСтрока = "строка2";
	юТест.ПроверитьРавенство("строка2", XMLСтрока(ПеременнаяСтрока));

	ПеременнаяСтрока = "";
	юТест.ПроверитьРавенство("", XMLСтрока(ПеременнаяСтрока));
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLСтрокаДата() Экспорт
	
	юТест.ПроверитьРавенство("2014-01-01T00:00:00", XMLСтрока('20140101'));
	юТест.ПроверитьРавенство("2014-01-01T12:27:30", XMLСтрока('20140101122730'));
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLСтрокаЧисло() Экспорт
	
	юТест.ПроверитьРавенство("100", XMLСтрока(100));
	юТест.ПроверитьРавенство("200.85", XMLСтрока(200.85));
	
КонецПроцедуры

Процедура ТестДолжен_Проверить_XMLСтрокаДвоичныеДанные() Экспорт
	
	ДДСкрипта = Новый ДвоичныеДанные(ТекущийСценарий().Источник);
	СтрокаДД = XMLСтрока(ДДСкрипта);
	
	юТест.ПроверитьЛожь(ПустаяСтрока(СтрокаДД));
	
КонецПроцедуры

Функция ПрочитатьФайлСкрипта(Знач Файл)
	
	Ч = Новый ЧтениеТекста(Файл);
	Текст = Ч.Прочитать();
	Ч.Закрыть();
	
	Возврат Текст;
	
КонецФункции

Функция ЗаписатьФайлСкрипта()
	ДД = Новый ДвоичныеДанные(ТекущийСценарий().Источник);
	base = Base64Строка(ДД);
	Возврат base;
КонецФункции

Процедура ТестДолжен_ПроверитьЗаписьВBase64() Экспорт

	base = ЗаписатьФайлСкрипта();
	юТест.ПроверитьЛожь(ПустаяСтрока(base));

КонецПроцедуры

Процедура ТестДолжен_ПроверитьЧтениеИзBase64() Экспорт

	base = ЗаписатьФайлСкрипта();
	ДД = Base64Значение(base);
	
	ВремФайл = КаталогВременныхФайлов() + "\base64test_temp.os";
	ДД.Записать(ВремФайл);
	
	ТекстИз64 = ПрочитатьФайлСкрипта(ВремФайл);
	ТекстИсходный = ПрочитатьФайлСкрипта(ТекущийСценарий().Источник);
	
	УдалитьФайлы(ВремФайл);
	
	юТест.ПроверитьРавенство(ТекстИсходный, ТекстИз64);
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьМатематическиеФункции() Экспорт

	// В 1С точность больше и аналогичные результаты получаются применением округления
	
	юТест.ПроверитьРавенство( 5.54517744447956, Log(256));
	юТест.ПроверитьРавенство( 3, Log10(1000));
	юТест.ПроверитьРавенство(-0.988031624092862, Sin(30));
	юТест.ПроверитьРавенство( 0.52532198881773, Cos(45));
	юТест.ПроверитьРавенство( 1.61977519054386, Tan(45));
	юТест.ПроверитьРавенство( 0.594385800001062, ASin(0.56));
	юТест.ПроверитьРавенство( 0.976410526793834, ACos(0.56));
	юТест.ПроверитьРавенство( 0.510488321916776, ATan(0.56));
	юТест.ПроверитьРавенство( 8103.08392757538, Exp(9));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоФункцияМинСравниваетЧисла() Экспорт
	
	юТест.ПроверитьРавенство(1, Мин(3,1,2,5,4));
	юТест.ПроверитьРавенство(3, Мин(3));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоФункцияМаксСравниваетЧисла() Экспорт
	
	юТест.ПроверитьРавенство(5, Макс(1,3,2,5,4));
	юТест.ПроверитьРавенство(5, Макс(5));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоФункцияМинСравниваетСтроки() Экспорт
	
	юТест.ПроверитьРавенство("А", Мин("Б","В","А","Г"));
	юТест.ПроверитьРавенство("Б", Мин("Б"));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоФункцияМаксСравниваетСтроки() Экспорт
	
	юТест.ПроверитьРавенство("Г", Макс("Б","В","А","Г"));
	юТест.ПроверитьРавенство("Б", Макс("Б"));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоФункцияМинНеСравниваетРазнотипныеЗначения() Экспорт
	
	Попытка
		зн = Мин(1, "F", Неопределено);
	Исключение
		Если Найти(ОписаниеОшибки(), "Сравнение на больше/меньше") = 0 Тогда
			ВызватьИсключение;
		КонецЕсли;
		
		Возврат;
		
	КонецПопытки;
	
	юТест.ПрерватьТест("Ожидалось исключение ""Сравнение несовместимых типов""");
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоФункцияМаксНеСравниваетРазнотипныеЗначения() Экспорт
	Попытка
		зн = Макс(1, "F", Неопределено);
	Исключение
		Если Найти(ОписаниеОшибки(), "Сравнение на больше/меньше") = 0 Тогда
			ВызватьИсключение;
		КонецЕсли;
		
		Возврат;
		
	КонецПопытки;
	
	юТест.ПрерватьТест("Ожидалось исключение ""Сравнение несовместимых типов""");
КонецПроцедуры

Процедура Тест_ДолженПроверитьЧтоКопированиеФайлаПерезаписываетПриемник() Экспорт

	Источник = ТекущийСценарий().Источник;
	Приемник = ПолучитьИмяВременногоФайла();
	
	КопироватьФайл(Источник, Приемник);
	
	ТекстИсходный = ПрочитатьФайлСкрипта(Источник);
	ТекстКопии    = ПрочитатьФайлСкрипта(Приемник);
	
	Попытка
		юТест.ПроверитьРавенство(ТекстИсходный, ТекстКопии, "файл должен быть скопирован");
	Исключение
		УдалитьФайлы(Приемник);
		ВызватьИсключение;
	КонецПопытки;
	
	Источник = Приемник;
	Приемник = ПолучитьИмяВременногоФайла();
	
	Запись = Новый ЗаписьТекста(Источник);
	Запись.ЗаписатьСтроку("ЭтоНоваяСтрока");
	Запись.Закрыть();

	КопироватьФайл(Источник, Приемник);
	
	ТекстИсходный = ПрочитатьФайлСкрипта(Источник);
	ТекстКопии    = ПрочитатьФайлСкрипта(Приемник);
	
	Попытка
		юТест.ПроверитьРавенство(ТекстИсходный, ТекстКопии, "файл должен быть скопирован");
	Исключение
		УдалитьФайлы(Приемник);
		УдалитьФайлы(Источник);
		ВызватьИсключение;
	КонецПопытки;
	
	УдалитьФайлы(Приемник);
	УдалитьФайлы(Источник);
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьСтрЧислоВхожденийВхожденийНет() Экспорт
	
	ГдеИскать = "Здесь был Ежик. Ежик любит грибы, Я Ежик!!!";
	ЧтоИскать = "колбаса";
	
	юТест.ПроверитьРавенство(0, СтрЧислоВхождений(ГдеИскать, ЧтоИскать));
	
КонецПроцедуры

Процедура Тест_ДолженПроверитьСтрЧислоВхождений() Экспорт
	
	ГдеИскать = "Здесь был Ежик. Ежик любит грибы, Я Ежик!!!";
	ЧтоИскать = "Ежик";
	
	юТест.ПроверитьРавенство(3, СтрЧислоВхождений(ГдеИскать, ЧтоИскать));
	
КонецПроцедуры
