&Пластилин("ОсновнойКонтрол") 
Перем ДругойЖелудь;

&Деталька("Настройки.login")
Перем Логин Экспорт;

&Деталька("Настройки.password")
Перем Пароль Экспорт;


&Контроллер("/")
&Отображение(Шаблон = "./view/main.html", Метод = "getMainControl")
Процедура ПриСозданииОбъекта()

КонецПроцедуры

Функция getMainControl() Экспорт
	Модель = Новый Структура("headName", "Съеденный WINOW");
	Возврат Модель;
КонецФункции

&ТочкаМаршрута("next_information")
&Отображение("./view/next_information.html")
Процедура Главная(Ответ) Экспорт
	ТекущаяМодель = Новый Структура;
	ТекущаяМодель.Вставить("Тип", 	"желудь");
	ТекущаяМодель.Вставить("Текст", 	ДругойЖелудь.получениеТекста());
	ТекущаяМодель.Вставить("Детальки", 	"<div> Логин:" + Логин + "</div>
										|<div> Пароль:" + Пароль + "</div>");
	Ответ.Модель = ТекущаяМодель;
КонецПроцедуры