@echo off
title Setup Express App

:: Cria a pasta
mkdir "%userprofile%\Documents\teste"

:: Entra na pasta
cd /d "%userprofile%\Documents\teste"

:: Inicializa o Node
call npm init -y

:: Instala o Express
call npm install express

:: Cria o server.js
echo const express = require('express')> server.js
echo const app = express()>> server.js
echo const port = 3000>> server.js
echo.>> server.js
echo app.get('/', (req, res) =^> {>> server.js
echo   res.send('Hello World!')>> server.js
echo })>> server.js
echo.>> server.js
echo app.listen(port, () =^> {>> server.js
echo   console.log('Example app listening on port 3000')>> server.js
echo })>> server.js

:: Inicia o VsCode

code .

:: Executa o servidor
node server.js

pause