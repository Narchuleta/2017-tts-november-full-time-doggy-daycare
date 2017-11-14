class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update]

  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)

    if @dog.save
      # if it saves go to the index
      redirect_to dogs_url, notice: 'Successfully saved.'
    else
      # if it doesn't save re-render the new dog form
      flash.now[:notice] = "Something went wrong. We couldn't save your dog..."
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @dog.update(dog_params)
      redirect_to dog_url(@dog), notice: 'Successfully Updated'
    else
      flash.now[:notice] = "Something went wrong, we couldn't update #{@dog.name}"
      render :edit
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :age, :breed)
  end

  def set_dog
    @dog = Dog.find(params[:id])
  end

end

