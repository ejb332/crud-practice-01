class VegetablesController < ApplicationController
  def index
    @vegetables = Vegetable.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
    # all I want to do is render the form - the user inputs the data here
    # actual creation of new instance doesn't happen until create method below
  end

  def create
    vegetable = Vegetable.new(
      name: params[:name],
      color: params[:color],
      delicious: params[:delicious]
      )
    # pull from each param entry
    vegetable.save
    # save and send us back to the main page
    redirect_to "/vegetables"
  end

  def show
    # need to store the instance's id in a variable so it can be recalled
    vegetable_id = params[:id]
    # instance (@singular) updated to be result of the given id (from params[:id])
    @vegetable = Vegetable.find_by(id: vegetable_id)
    render "show.html.erb"
  end

  def edit
  end

  def update
  end

  def destroy
    @vegetable = Vegetable.find_by(params[:name])
    @vegetable.destroy
    render "destroy.html.erb"
  end
end
