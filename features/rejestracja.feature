#language: pl
Właściwość: Rejestracja

Użytkownik może się zarejestrować, po to żeby móc bezpiecznie korzystać z serwisu.
Warunki:
tytuł min 3 znaki
Imię min 3 znaki
Naziwsko min 3 znaki
Email poprawny i unikalny
Hasło od 8 znaków do 20 znaków

	Szablon scenariusza: Poprawna rejestracja
	Zakładając że jesteśmy na "Strona główna"
	I chcemy się zarejestrować to klilkniemy w link "Zarejestruj się"
	Wtedy zobaczymy komunikat "Zarejestruj się"
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz hasło"
	I uzupełnię "Tytuł" tekstem "<tytuł>"
	I uzupełnię "Imię" tekstem "<imię>"
	I uzupełnię "Nazwisko" tekstem "<nazwisko>"
	I uzupełnię "Email" tekstem "<email>"
	I uzupełnię "user_password" tekstem "<hasło>"
	I uzupełnię "user_password_confirmation" tekstem "<hasło>"	
	Wtedy kliknę przycisk "Zarejestruj się"
	I zobaczymy komunikat "Witaj! Zarejestrowałeś się pomyślnie."

	Przykłady:
	| tytuł		| imię		| nazwisko		| email			| hasło		|	
	| mgr		| Konrad	| Ziaja			| kob2222@gmail.com	| takiesuper12	|

	Szablon scenariusza: Niepoprawna rejestracja - błędny tytuł
	Zakładając że jesteśmy na "Strona główna"
	I chcemy się zarejestrować to klilkniemy w link "Zarejestruj się"
	Wtedy zobaczymy komunikat "Zarejestruj się"
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz hasło"
	I uzupełnię "Tytuł" tekstem "<tytuł>"
	I uzupełnię "Imię" tekstem "<imię>"
	I uzupełnię "Nazwisko" tekstem "<nazwisko>"
	I uzupełnię "Email" tekstem "<email>"
	I uzupełnię "user_password" tekstem "<hasło>"
	I uzupełnię "user_password_confirmation" tekstem "<hasłop>"	
	Wtedy kliknę przycisk "Zarejestruj się"
	I zobaczymy komunikat "user nie został zapisany"
	I zobaczymy komunikat "<komunikat>"
	Wtedy zobaczymy komunikat "Zarejestruj się"
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz hasło"

		Przykłady:
	| tytuł	|imię	|nazwisko|email		|hasło		|hasłop 	|komunikat		|	
	| 	|Konrad	|Ziaja	|kob2222@gmail.com|takiesuper12	|takiesuper12	|Tytuł nie może być puste|
	| mg	|Konrad	|Ziaja	|kob2222@gmail.com|takiesuper12	|takiesuper12	|Tytuł jest za krótkie (przynajmniej 3 znaków)|
	|bardzodlugimgrbaddssrdzodlugimgrbardzodlugimgrbardz|Konrad	|Ziaja	|kob2222@gmail.com|takiesuper12	|takiesuper12	|Tytuł jest za długie (maksymalnie 50 znaków)|

	Szablon scenariusza: Niepoprawna rejestracja - błędne imię
	Zakładając że jesteśmy na "Strona główna"
	I chcemy się zarejestrować to klilkniemy w link "Zarejestruj się"
	Wtedy zobaczymy komunikat "Zarejestruj się"
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz hasło"
	I uzupełnię "Tytuł" tekstem "<tytuł>"
	I uzupełnię "Imię" tekstem "<imię>"
	I uzupełnię "Nazwisko" tekstem "<nazwisko>"
	I uzupełnię "Email" tekstem "<email>"
	I uzupełnię "user_password" tekstem "<hasło>"
	I uzupełnię "user_password_confirmation" tekstem "<hasłop>"	
	Wtedy kliknę przycisk "Zarejestruj się"
	I zobaczymy komunikat "user nie został zapisany"
	I zobaczymy komunikat "<komunikat>"
	Wtedy zobaczymy komunikat "Zarejestruj się"
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz hasło"

		Przykłady:
	| tytuł	|imię	|nazwisko|email		|hasło		|hasłop 	|komunikat		|	
	| mgr	|	|Ziaja	|kob2222@gmail.com|takiesuper12	|takiesuper12	|Imię nie może być puste|
	| mgr	|Ko	|Ziaja	|kob2222@gmail.com|takiesuper12	|takiesuper12	|Imię jest za krótkie (przynajmniej 3 znaków)|
	| mgr 	|DlugieImieDlugieImieDlugieImieDlugieImieDlugieImieD	|Ziaja	|kob2222@gmail.com|takiesuper12	|takiesuper12	|Imię jest za długie (maksymalnie 50 znaków)|

	Szablon scenariusza: Niepoprawna rejestracja - błędne nazwisko
	Zakładając że jesteśmy na "Strona główna"
	I chcemy się zarejestrować to klilkniemy w link "Zarejestruj się"
	Wtedy zobaczymy komunikat "Zarejestruj się"
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz hasło"
	I uzupełnię "Tytuł" tekstem "<tytuł>"
	I uzupełnię "Imię" tekstem "<imię>"
	I uzupełnię "Nazwisko" tekstem "<nazwisko>"
	I uzupełnię "Email" tekstem "<email>"
	I uzupełnię "user_password" tekstem "<hasło>"
	I uzupełnię "user_password_confirmation" tekstem "<hasłop>"	
	Wtedy kliknę przycisk "Zarejestruj się"
	I zobaczymy komunikat "user nie został zapisany"
	I zobaczymy komunikat "<komunikat>"
	Wtedy zobaczymy komunikat "Zarejestruj się"
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz hasło"

		Przykłady:
	| tytuł	|imię	|nazwisko|email		|hasło		|hasłop 	|komunikat		|	
	| mgr	|Konrad	|	|kob2222@gmail.com|takiesuper12	|takiesuper12	|Nazwisko nie może być puste|
	| mgr	|Konrad |Zi	|kob2222@gmail.com|takiesuper12	|takiesuper12	|Nazwisko jest za krótkie (przynajmniej 3 znaków)|
	| mgr 	|Konrad	|ZDlugienazwiskoDlugienazwiskoDlugienazwiskoDlugienaz|kob2222@gmail.com|takiesuper12	|takiesuper12	|Nazwisko jest za długie (maksymalnie 50 znaków)|

	Szablon scenariusza: Niepoprawna rejestracja - błędny email
	Zakładając że rejestrujemy się z blędnym emailem
	I że jesteśmy na "Strona główna"
	I chcemy się zarejestrować to klilkniemy w link "Zarejestruj się"
	Wtedy zobaczymy komunikat "Zarejestruj się" 
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz hasło"
	I uzupełnię "Tytuł" tekstem "<tytuł>"
	I uzupełnię "Imię" tekstem "<imię>"
	I uzupełnię "Nazwisko" tekstem "<nazwisko>"
	I uzupełnię "Email" tekstem "<email>"
	I uzupełnię "user_password" tekstem "<hasło>"
	I uzupełnię "user_password_confirmation" tekstem "<hasłop>"	
	Wtedy kliknę przycisk "Zarejestruj się"
	I zobaczymy komunikat "user nie został zapisany"
	I zobaczymy komunikat "<komunikat>"
	Wtedy zobaczymy komunikat "Zarejestruj się"
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz hasło"

		Przykłady:
	| tytuł	|imię	|nazwisko|email		|hasło		|hasłop 	|komunikat		|	
	| mgr	|Konrad	|Ziaja	|	|takiesuper12	|takiesuper12	|Email nie może być puste|
	| mgr	|Konrad |Ziaja	|kob2222gmail.com|takiesuper12	|takiesuper12	|Email jest nieprawidłowe|
	| mgr 	|Konrad	|Ziaja	|kob2222@gmailcom|takiesuper12	|takiesuper12	|Email jest nieprawidłowe|
	| mgr	|Konrad |Ziaja	|k	|takiesuper12	|takiesuper12	|Email jest nieprawidłowe|
	| mgr	|Konrad |Ziaja	|kob2222gmail.com|takiesuper12	|takiesuper12	|Email jest nieprawidłowe|
	| mgr 	|Konrad	|Ziaja	|testowy@testowy.pl|takiesuper12	|takiesuper12	|Email zostało już zajęte|
	| mgr 	|Konrad	|Ziaja	|SuperDlugiEmailSuperDlugiEmailSuperDlugiEm@gmai.com|takiesuper12	|takiesuper12	|Email jest za długie (maksymalnie 50 znaków)|

	Szablon scenariusza: Niepoprawna rejestracja - błędne hasło
	Zakładając że jesteśmy na "Strona główna"
	I chcemy się zarejestrować to klilkniemy w link "Zarejestruj się"
	Wtedy zobaczymy komunikat "Zarejestruj się"
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz hasło"
	I uzupełnię "Tytuł" tekstem "<tytuł>"
	I uzupełnię "Imię" tekstem "<imię>"
	I uzupełnię "Nazwisko" tekstem "<nazwisko>"
	I uzupełnię "Email" tekstem "<email>"
	I uzupełnię "user_password" tekstem "<hasło>"
	I uzupełnię "user_password_confirmation" tekstem "<hasłop>"	
	Wtedy kliknę przycisk "Zarejestruj się"
	I zobaczymy komunikat "user nie został zapisany"
	I zobaczymy komunikat "<komunikat>"
	Wtedy zobaczymy komunikat "Zarejestruj się"
	I zobaczymy pola "Tytuł", "Imię", "Nazwisko", "Email", "Hasło", "Powtórz hasło"

		Przykłady:
	| tytuł	|imię	|nazwisko|email		|hasło		|hasłop 	|komunikat		|	
	| mgr	|Konrad	|Ziaja	|kob2222@gmail.com||takiesuper12	|Password nie może być puste|
	| mgr	|Konrad	|Ziaja	|kob2222@gmail.com|1234567	|takiesuper12	|Password jest za krótkie (przynajmniej 8 znaków)|
	| mgr 	|Konrad|Ziaja	|kob2222@gmail.com|123456789012345678901	|takiesuper12	|Password jest za długie (maksymalnie 20 znaków)|
	| mgr	|Konrad	|Ziaja	|kob2222@gmail.com|12345678	|takiesuper12	|Password nie zgadza się z potwierdzeniem|
