class InscriptionsController < ApplicationController
  require 'json'
  respond_to :html, :json, :xml
  skip_before_filter :verify_authenticity_token
  http_basic_authenticate_with name: "ideais", password: "ideais", :only => :show

  def show
    @inscriptions = Inscription.all

    respond_to do |format|
      format.html # show.html.erb
      format.json
    end
  end

  def error

  end

  def add

    hash = JSON.parse params[:json]

    @inscription = Inscription.new

    @inscription.email = hash['email']
    @inscription.name = hash['name']
    @inscription.linkedin_url = hash['linkedin_url']
    @inscription.github = hash['github']
    @inscription.facebook = hash['facebook']
    @inscription.twitter = hash['twitter']
    @inscription.about = hash['about']

    hash['jobs'].each do |j|

      job = Job.new

      job.company = j['company']
      job.begin = j['begin']
      job.end = j['end']
      job.title = j['title']

      @inscription.jobs << job

    end

    hash['educations'].each do |e|

      education = Education.new

      education.school = e['school']
      education.begin = e['begin']
      education.end = e['end']
      education.degree = e['degree']

      @inscription.educations << education

    end

    address = Address.new

    address.city = hash['address']['city']
    address.state = hash['address']['state']
    address.country = hash['address']['country']
    address.cep = hash['address']['cep']
    address.neighborhood = hash['address']['neighborhood']
    address.street = hash['address']['street']
    address.number = hash['address']['number']
    address.complement = hash['address']['complement']

    @inscription.address = address

    if @inscription.save

      render :text => " "

    else

      render :action => :error

    end
  end

end
