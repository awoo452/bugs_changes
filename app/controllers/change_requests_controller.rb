class ChangeRequestsController < ApplicationController
  # TODO: enforce authentication once the auth gem is installed.

  def new
    @change_request = ChangeRequest.new
  end

  def create
    @change_request = ChangeRequest.new(change_request_params)

    if @change_request.save
      redirect_to new_change_request_path, notice: "Thanks! Your change request has been submitted."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def change_request_params
    params.require(:change_request).permit(
      :requester_name,
      :requester_email,
      :summary,
      :details,
      :benefit,
      :acceptance_criteria,
      :priority,
      :status,
      :target_release
    )
  end
end
