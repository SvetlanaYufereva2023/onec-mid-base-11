#Область ПрограммныйИнтерфейс


// Дополнить форму.
// Дополням форму доп. реквизитами
// Параметры:
//  Форма 
//      Форма
Процедура ДополнитьФорму(Форма) Экспорт
	
	ИмяФормы = Форма.ИмяФормы;
	
	Если ИмяФормы = "Документ.ЗаказПокупателя.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма); 
		ДобавитьПолеСогласованнаяСкидка(Форма);
	ИначеЕсли ИмяФормы = "Документ.ПоступлениеТоваровУслуг.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма); 
	ИначеЕсли ИмяФормы = "Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента"	Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.ОплатаОтПокупателя.Форма.ФормаДокумента"	Тогда
	    ВставитьПолеКонтактноеЛицоНаФормуПередОснование(Форма)
	ИначеЕсли ИмяФормы = "Документ.ОплатаПоставщику.Форма.ФормаДокумента"	Тогда
	    ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма); 
	КонецЕсли;	
	
КонецПроцедуры	 
#КонецОбласти
# Область СлужебныеПроцедурыИФункции
Процедура ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма) 
	
	ПолеВвода = Форма.Элементы.Добавить("КонтактноеЛицо",Тип("ПолеФормы"),Форма.Элементы.ГруппаШапкаПраво);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.Д_КонтактноеЛицо";
	
КонецПроцедуры

Процедура ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма) 
	
	ПолеВвода = Форма.Элементы.Вставить("КонтактноеЛицо",Тип("ПолеФормы"),,Форма.Элементы.СуммаДокумента);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.Д_КонтактноеЛицо";
   
КонецПроцедуры	 

Процедура ВставитьПолеКонтактноеЛицоНаФормуПередОснование(Форма) 
	
	ПолеВвода = Форма.Элементы.Вставить("КонтактноеЛицо",Тип("ПолеФормы"),,Форма.Элементы.Основание);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.Д_КонтактноеЛицо";
КонецПроцедуры

Процедура ДобавитьПолеСогласованнаяСкидка(Форма) 
	
	ПолеВвода = Форма.Элементы.Добавить("СогласованнаяСкидка",Тип("ПолеФормы"),Форма.Элементы.ГруппаШапкаЛево);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.Д_СогласованнаяСкидка";  
	ПолеВвода.УстановитьДействие("ПриИзменении","Д_СогласованнаяСкидкаПриИзменении");
		
КонецПроцедуры	

#КонецОбласти

