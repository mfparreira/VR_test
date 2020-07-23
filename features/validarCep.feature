# language: pt

 Funcionalidade: Esta funcionalidade tem como objetivo validar dados de um endereço a partir de um CEP

 @Consulta
Esquema do Cenario: Realizar consulta CEP válido
 Dado que eu realize a chamada via api <cep>
 Entao devo ver a rua referente ao CEP da pesquisa  e exibir o código ibge

Exemplos:
|cep       |
|"03211130"|
|"00000001"|
|"03211130"|
|"03211135"|
|"11740000"|
