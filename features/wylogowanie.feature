#language: pl
Właściwość: Wylogowanie

Jako użytkownik, chcę się móc wylogować z konta, aby uniemożliwić nieautoryzowany dostęp do konta.

	Scenariusz: Wylogowanie
	Zakładając że jesteśmy zalogowani
	Kiedy klikniemy link "Wyloguj"
	Wtedy zobaczymy komunikat "Wylogowałeś się. Zapraszamy ponownie!"
	Kiedy wrócimy na "Strona główna"
	Wtedy powinienem być wylogowany
