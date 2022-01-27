# -*- coding: utf-8 -*-
# +
*** Settings ***
Documentation     

Library     RPA.Excel.Files
# -

*** Variables ***
${fileName}    FirstExcelFile.xlsx

*** Keywords ***
Create A New Excel File
    Create Workbook     fmt=xlsx    #Essa instrução cria o arquivo e define o formato.
    Save Workbook      ${fileName}      #Essa instrução salva o arquivo

*** Tasks ***
Create New Excel
    Create A New Excel File     #Chama a function.
    Log    Done.
