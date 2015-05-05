class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.order("created_at DESC")
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new_form
    render 'new_form'
  end

  def create_row
    z = Movie.new
    z.title = params["the_title"]
    # where are these strings: "the_caption" and "the_source" pulling from? Look in new form view - coming from the name field in the form.
    z.image_url = params["the_source"]
    z.year = params["the_year"]
    z.duration = params["the_duration"]
    z.description = params["the_description"]
    z.save
    redirect_to("http://localhost:3000/movies")
  end

  def destroy
     @movie_destroy = Movie.find_by({:id => params["id"]})
     @movie_destroy.destroy
     redirect_to("http://localhost:3000/movies")
  end

  def edit_form
    z = Movie.find(params[:id])
    @title = z.title
    @img = z.image_url
    @id = z.id
    @year = z.year
    @duration = z.duration
    @description = z.description
    render 'edit_form'
  end

  def update_row
    z = Movie.find(params[:id])
    z.title = params["the_title"]
    z.image_url = params["the_source"]
    z.year = params["the_year"]
    z.duration = params["the_duration"]
    z.description = params["the_description"]
    z.save
    redirect_to("http://localhost:3000/movies")
  end

end
