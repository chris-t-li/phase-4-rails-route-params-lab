Rails.application.routes.draw do
  get '/students', to: 'students#index'
  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'
  get '/students/:id', to: 'students#show'
  get '/students?name=:name', to: 'students#index'
  # get '/students?first_name=:first_name&last_name=:last_name', to: 'students.search'
end
