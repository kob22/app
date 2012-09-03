#language: pl
Właściwość: Logowanie

Jako użytkownik chcę się zalogować, aby móc bezpiecznie korzystać z serwisu

	Szablon scenariusza: Poprawne logowanie
	Zakładając że jesteśmy na "Strona główna"
	I chcemy się zalogować to klikniemy link "Zaloguj się"
	Wtedy zobaczymy komunikat "Zaloguj się"
	I zobaczymy dwa pola "Email", "Hasło"
	I uzupełnię "Email" tekstem "<email>"
	I uzupełnię "user_password" tekstem "<hasło>"
	Wtedy kliknę przycisk "Zaloguj się"
	I zobaczymy komunikat "Witaj ponownie!"
	Oraz zobaczymy komunikat "Zalogowany jako <email>"

	Przykłady:
	|email|hasło|
	|testowy@testowy.pl|12345678ab|

	Szablon scenariusza: Niepoprawne logowanie - błędne hasło lub email
	Zakładając że jesteśmy na "Strona główna"
	I chcemy się zalogować to klikniemy link "Zaloguj się"
	Wtedy zobaczymy komunikat "Zaloguj się"
	I zobaczymy dwa pola "Email", "Hasło"
	I uzupełnię "Email" tekstem "<email>"
	I uzupełnię "user_password" tekstem "<hasło>"
	Wtedy kliknę przycisk "Zaloguj się"
	I zobaczymy komunikat "Niepoprawny adres e-mail lub hasło."
	Wtedy zobaczymy komunikat "Zaloguj się"
	I zobaczymy dwa pola "Email", "Hasło"

	Przykłady:
	|email|hasło|
	|testoowy@testowy.pl|12345678ab|
	|testowy@testowy.pl|123425678ab|
