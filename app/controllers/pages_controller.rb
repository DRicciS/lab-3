class PagesController < ApplicationController
  def home; end
  def about; end

  def contact
    if request.post?
      flash[:notice] = "Thank you for your message, we will contact you soon."
      redirect_to contact_path
    end
  end
end
