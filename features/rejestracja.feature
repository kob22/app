# language: pl
Właściwość: Rejestracja

Użytkownik może się zarejestrować, po to żeby móc bezpiecznie korzystać z serwisu.


	Scenariusz: Poprawna rejestracja
	Zakładając że jesteśmy na "Strona główna"
	I klilkniemy w link "Zarejestruj się"
	Wtedy zobaczymy tekst "Zarejestruj się"
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz hasło"
	I uzupełnię:
	| Tytuł			| mgr			|
 	| Imię			| Konrad		|
  	| Nazwisko		| Ziaja			|
  	| Email         	| kob2222@gmail.com	|
  	| user_password		| takiesuper		|
  	| user_password_confirmation	| takiesuper		|
	Wtedy kliknę przycisk "Zarejestruj się"
	I zobaczymy tekst "Rejestracja przebiegła pomylśnie"

