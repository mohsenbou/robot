*** Settings ***
Documentation       robot .\Tests\PageObjectModel\.
...                 robot .\Tests\PageObjectModel\*.robot
...                 pip install robotframework-pabot
...                 #permet de lancer 2 process donc 2 test en parallele
...                 pabot --processes 2 .\Tests\PageObjectModel\*.robot
...                 #permet de créer un repertoire results pour les log
...                 pabot --processes 2 --outputdir Results .\Tests\PageObjectModel\*.robot
                    # on peut créer un fichier run.bat et y mettre la ligne de commande précédentes
