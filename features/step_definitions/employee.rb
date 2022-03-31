Dado('que o usuario consulte informacoes de funcionario') do
      #  @teste = HTTParty.get('http://dummy.restapiexample.com/api/v1/employees')
      #  expect( @teste
    @get_url = 'http://dummy.restapiexample.com/api/v1/employees'
    end

Quando('ele realizar a pesquisa') do
  @list_employee = HTTParty.get(@get_url)
       
end

Então('um lista de funcionarios deve retornar') do
  expect(@list_employee.code).to eql 200
  expect(@list_employee.message).to eql 'OK'
       
end


Dado('que o usuario cadastre um novo funcionario') do
      @post_url= 'http://dummy.restapiexample.com/api/v1/create'
end

Quando('ele enviar as informacoes do funcionario') do
  @create_empleyee = HTTParty.post(@post_url,:headers =>{'Content-Type': 'application/json'}, body: {
    "id": 27,
    "employee_name": "Teste Nome",
    "employee_salary": 420800,
    "employee_age": 30,
    "profile_image": ""
  }.to_json)  
  
  
end

Entao('ele funcionario sera cadastrado') do
 
  expect( @create_empleyee.code).to eql (200)
  expect( @create_empleyee.msg).to eql 'OK'
  expect( @create_empleyee["status"]).to eql 'success'
  expect( @create_empleyee["message"]).to eql "Successfully! Record has been added."
  expect( @create_empleyee.parsed_response["data"]["employee_name"]).to eql "Teste Nome"
  expect( @create_empleyee.parsed_response["data"]["employee_salary"]).to eql (420800)
  expect( @create_empleyee.parsed_response["data"]["employee_age"]).to eql (30)

end