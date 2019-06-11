Перем ЮнитТест;

#Область ОбработчикиСобытийМодуля

Функция ПолучитьСписокТестов(МенеджерТестирования) Экспорт
	
	ЮнитТест = МенеджерТестирования;

	СписокТестов = Новый Массив;
	СписокТестов.Добавить("ТестКонструктор");
	СписокТестов.Добавить("TestConstructor");
	СписокТестов.Добавить("ТестЗначение");
	СписокТестов.Добавить("ТестЛексическоеЗначение");
	СписокТестов.Добавить("ТестОпределениеПростогоТипа");

	Возврат СписокТестов;

КонецФункции

#КонецОбласти

#Область ОбработчикиТестирования

Процедура ТестКонструктор() Экспорт
	
	Фасет = Новый ФасетМинимальногоВключающегоЗначенияXS;
	
	ЮнитТест.ПроверитьРавенство(ТипЗнч(Фасет), Тип("ФасетМинимальногоВключающегоЗначенияXS"));
	ЮнитТест.ПроверитьРавенство(Фасет.ТипКомпоненты, ТипКомпонентыXS.МинимальноВключающийФасет);
	ЮнитТест.ПроверитьИстину(Фасет.Включающий);
	ЮнитТест.ПроверитьЛожь(Фасет.Исключающий);

КонецПроцедуры

Процедура TestConstructor() Экспорт

	Facet = New XSMinInclusiveFacet;
	
	ЮнитТест.ПроверитьРавенство(ТипЗнч(Facet), Тип("XSMinInclusiveFacet"));
	ЮнитТест.ПроверитьРавенство(Facet.ComponentType, XSComponentType.MinInclusiveFacet);

КонецПроцедуры

Процедура ТестЗначение() Экспорт

	Фасет = Новый ФасетМинимальногоВключающегоЗначенияXS;
	Фасет.Значение = "5";

	ЮнитТест.ПроверитьРавенство(Фасет.Значение, "5");
	ЮнитТест.ПроверитьРавенство(Фасет.ЛексическоеЗначение, "5");

	Фасет.Значение = Истина;

	ЮнитТест.ПроверитьРавенство(Фасет.Значение, Истина);
	ЮнитТест.ПроверитьРавенство(Фасет.ЛексическоеЗначение, "true");

	Фасет.Значение = Ложь;

	ЮнитТест.ПроверитьРавенство(Фасет.Значение, Ложь);
	ЮнитТест.ПроверитьРавенство(Фасет.ЛексическоеЗначение, "false");

	Фасет.Значение = 5;

	ЮнитТест.ПроверитьРавенство(Фасет.Значение, 5);
	ЮнитТест.ПроверитьРавенство(Фасет.ЛексическоеЗначение, "5");

	Дата = ТекущаяДата();
	
	Фасет.Значение = Дата;
	ЮнитТест.ПроверитьРавенство(Фасет.Значение, Дата);
	ЮнитТест.ПроверитьРавенство(Фасет.ЛексическоеЗначение, XMLСтрока(Дата));

КонецПроцедуры

Процедура ТестЛексическоеЗначение() Экспорт

	Фасет = Новый ФасетМинимальногоВключающегоЗначенияXS;
	Фасет.ЛексическоеЗначение = "5";

	ЮнитТест.ПроверитьРавенство(Фасет.ЛексическоеЗначение, "5");
	ЮнитТест.ПроверитьРавенство(Фасет.Значение, "5");

КонецПроцедуры

Процедура ТестОпределениеПростогоТипа() Экспорт

	Фасет = Новый ФасетМинимальногоВключающегоЗначенияXS;
	Фасет.ЛексическоеЗначение = "5";

	ОпределениеТипа = Новый ОпределениеПростогоТипаXS;
	ОпределениеТипа.Вариант = ВариантПростогоТипаXS.Атомарная;
	ОпределениеТипа.Фасеты.Добавить(Фасет);

	ЮнитТест.ПроверитьРавенство(Фасет.Контейнер, ОпределениеТипа);
	ЮнитТест.ПроверитьРавенство(Фасет.ОпределениеПростогоТипа, ОпределениеТипа);

КонецПроцедуры

#КонецОбласти