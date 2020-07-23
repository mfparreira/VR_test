
Dado('que eu realize a chamada via api {string}') do |cep|


    @response = HTTParty.get("https://viacep.com.br/ws/"+cep+"/json/")
    @responseBody = @response.body
   
    
end
  
Entao('devo ver a rua referente ao CEP da pesquisa  e exibir o código ibge') do
  
    
    if @responseBody.include?("ibge")
        
        @codIBge = @response ['ibge']
        log "CEP encontrado, o  código do ibge é: #{@codIBge}"
    
    elsif @responseBody.include?("erro")

        log 'CEP não encotrado'
    end
    

end