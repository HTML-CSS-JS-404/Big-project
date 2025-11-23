CLS
@ Echo off
tytu³ Folder prywatny
jeœli ISTNIEJE „TazkraNet Locker”, przejdŸ do ODBLOKOWANIA
jeœli NIE ISTNIEJE Prywatne przejdŸ do MDLOCKER
: CONFIRM
echo Czy na pewno chcesz zablokowaæ folder (T/N)
ustaw/p „cho=>”
if% cho% == Y goto LOCK
if% cho% == y goto LOCK
if% cho% == n goto END
if% cho% == N goto END
echo B³êdny wybór.
goto CONFIRM
: LOCK
ren Private „TazkraNet Locker”
attrib +h +s „TazkraNet Locker”
Folder echo zablokowany
goto End
Odblokowaæ
echo WprowadŸ has³o, aby odblokowaæ folder
ustaw/p „przejœcie =>”
jeœli NIE %pass%== TazkraNet koñczy siê niepowodzeniem
attrib -h -s „TazkraNet Locker”
ren „TazkraNet Locker” Prywatny
echo Folder pomyœlnie odblokowany
goto End
: FAIL
echo Nieprawid³owe has³o
goto end
: MDLOCKER
mdPrywatne
Pomyœlnie utworzono echoPrivate
goto End
: Koniec