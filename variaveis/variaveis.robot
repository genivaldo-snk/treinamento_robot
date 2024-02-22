*** Variables ***
&{pessoa}    nome=Genivaldo    sobrenome=Fernandes 
...    idade=30    cidade=GO    sexo=Masculino    estado_civil=Solteiro

@{frutas}    mamao    abacaxi    limao    tomate    uva

@{paises}    Brasil    Argentina    Cuba    Chile    Mexico

*** Keywords ***

Formatar email para "${nome}" "${sobrenome}" idade "${idade}"
    ${email}    Evaluate    \n"${nome}"+"_"+"${sobrenome}"+"_"+"${idade}"+"@robot.com"
    RETURN    ${email}

Contando de "${inicio}" a "${fim}"
    FOR    ${numero}    IN RANGE    ${inicio}    ${fim}
        Log To Console    \nEstou no número: ${numero}
    END

Nome dos paises
    [Arguments]    ${inicio}    ${fim}
    FOR    ${numero}    IN RANGE    ${inicio}    ${fim}
        Log To Console    \nPais[${numero}]: ${paises}[${numero}]
    END



*** Test Cases ***

Imprimir dados pessoais
    Log To Console    \n${pessoa.nome}
    Log To Console    \n${pessoa.sobrenome}
    Log To Console    \n${pessoa.idade}
    Log To Console    \n${pessoa.cidade}
    Log To Console    \n${pessoa.sexo}
    Log To Console    \n${pessoa.estado_civil}

Imprimir minha lista de flutas
    Log To Console    \n\n${frutas}[0]
    Log To Console    \n${frutas}[1]
    Log To Console    \n${frutas}[2]
    Log To Console    \n${frutas}[3]
    Log To Console    \n${frutas}[4]

Email formatado
    ${email}    Formatar email para "Genivaldo" "Fernandes" idade "30"
    Log To Console    \n\n${email}\n


Imprimir frase
    Contando de "0" a "11"

Imprimir lista de paises
    Nome dos paises    0    5