collection @inscriptions, :object_root => false
attributes :name, :email, :linkedin_url, :github, :facebook, :twitter, :about
child :jobs, :object_root => false do
  attributes :begin, :end, :company, :title
end
child :educations => :education, :object_root => false do
  attributes :begin, :end, :school, :degree
end
child :address, :object_root => false do
  attributes :city, :state, :country, :cep, :neighborhood, :street, :number, :complement
end