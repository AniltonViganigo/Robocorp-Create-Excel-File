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

*** Keywords ***
Creating a New Worksheet in Excel
    Open Workbook    ${fileName}
    Create Worksheet    New Sheet    None   False   False
    Save Workbook   ${fileName}

*** Keywords ***
Read Worksheet Excel
    Open Workbook    ${fileName}
    ${rows}=    Read Worksheet      New Sheet   True
    Log    ${rows}
    Close Workbook

*** Tasks ***
Create New Excel
    #Create A New Excel File     #Chama a function.
    #Creating a New Worksheet in Excel
    Read Worksheet Excel
    Log    Done.
