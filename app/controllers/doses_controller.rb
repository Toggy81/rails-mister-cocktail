class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save

    # no need for app/views/doses/create.html.erb
    redirect_to dose_path(@dose)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    # no need for app/views/doses/destroy.html.erb
    # redirect_to doses_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
