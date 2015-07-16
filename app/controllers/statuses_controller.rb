class StatusesController < ApplicationController
  def index
    @page = (params[:page] || 1).to_i  # Params is a hash of paramaters. parts of the URL.
                                    # set the default page to page 1.
    offset = (@page - 1) * 25    # This will skip 25 from this page.
    @statuses = Status.order(created_at: :desc).limit(25).offset(offset).all     # This will limit the amount of statuses to 25 shown per page.
  end

  def show
  end

  def new
  end
end
