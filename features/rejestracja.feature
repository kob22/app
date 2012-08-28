# language: pl
Właściwość: Rejestracja

Użytkownik może się zarejestrować, po to żeby móc bezpiecznie korzystać z serwisu.


	Scenariusz: Poprawna rejestracja
	Zakładając że jesteśmy na "Strona główna"
	I klilkniemy w link "Zarejestruj sie"
	Wtedy zobaczymy tekst "Zarejestruj się"
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz Hasło"
	I uzupełnię "Tytuł" tekstem <tytuł>
	I uzupełnię "Imie" tekstem <imię>
	I uzupełnię "Nazwisko" tekstem <nazwisko>
	I uzupełnię "Email" tekstem <email>
	I uzupełnię "Hasło" tekstem <hasło>
	I uzupełnię "Powtórz hasło" tekstem <hasło>
	Wtedy kliknę przycisk "Zarejestruję się"
	I zobaczę tekst "Rejestracja przebiegła pomylśnie"
