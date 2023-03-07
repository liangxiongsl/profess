set port=8091
start http://localhost:%port% 
title Professional course - %port%
mkdocs serve -a localhost:%port%
