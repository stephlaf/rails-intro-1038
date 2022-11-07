class PagesController < ApplicationController
  def home
    @date = Date.today.strftime('%A, %b %d')
  end

  def about
  end

  def contact
    query = params[:query]
    @members = %w[Andrew Anabelle Lisandra Reed]

    if query.present?
      @members = @members.select { |member| member.start_with?(query) }
    end
  end
end
