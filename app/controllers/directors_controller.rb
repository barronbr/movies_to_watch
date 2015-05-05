class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.order("created_at DESC")
  end

  def show
    @director = Director.find(params[:id])
  end

  def new
    render 'new'
  end

  def create
    z = Director.new
    z.name = params["the_name"]
    # where are these strings: "the_caption" and "the_source" pulling from? Look in new form view - coming from the name field in the form.
    z.image_url = params["the_source"]
    z.dob = params["the_dob"]
    z.bio = params["the_bio"]
    z.save
    redirect_to("http://localhost:3000/directors")
  end

  def destroy
     @director_destroy = Director.find_by({:id => params["id"]})
     @director_destroy.destroy
     redirect_to("http://localhost:3000/directors")
  end

  def edit
    z = Director.find(params[:id])
    @name = z.name
    @img = z.image_url
    @id = z.id
    @dob = z.dob
    @bio = z.bio
    render 'edit'
  end

  def update
    z = Director.find(params[:id])
    z.name = params["the_name"]
    z.image_url = params["the_source"]
    z.dob = params["the_dob"]
    z.bio = params["the_bio"]
    z.save
    redirect_to("http://localhost:3000/directors")
  end

end
