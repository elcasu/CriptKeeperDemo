class DemoController < ApplicationController
  def index
    @demos = Demo.all
  end

  def new
    @demo = Demo.new
  end

  def edit
    @demo = Demo.find(params[:id])
  end

  def create
    demo = Demo.new(demo_params)
    if demo.save
      redirect_to demo_index_path
    else
      flash[:errors] = "An error ocurred when creating demo"
      render :new
    end
  end

  def update
    @demo = Demo.find(params[:id])
    if @demo.update_attributes(demo_params)
      redirect_to demo_index_path
    else
      flash[:errors] = "An error ocurred when updating demo"
      render :edit
    end
  end

private

  def demo_params
    params.require(:demo).permit(:name, :secret_value)
  end
end
