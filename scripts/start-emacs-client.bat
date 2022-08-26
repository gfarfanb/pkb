
:: Emacs Client
:: Launch a new instance of Emacs client
:: Pre-conditions:
::   Run start-emacs-server.bat
:: Required Environment Variables:
::   EMACS_HOME=C:\...\emacs-28.1
::   Path=%Path%;%EMACS_HOME%\bin

emacsclientw.exe -create-frame --alternate-editor=""

