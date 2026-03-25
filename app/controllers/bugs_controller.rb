class BugsController < ApplicationController
  # TODO: enforce authentication once the auth gem is installed.

  def new
    @bug = Bug.new
  end

  def create
    @bug = Bug.new(bug_params.merge(ip_address: request.remote_ip))

    if @bug.save
      redirect_to new_bug_path, notice: "Thanks! Your bug report has been submitted."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bug_params
    params.require(:bug).permit(
      :reporter_name,
      :reporter_email,
      :summary,
      :details,
      :steps_to_reproduce,
      :expected_behavior,
      :actual_behavior,
      :severity,
      :status,
      :environment
    )
  end
end
