class KontaktsController < ApplicationController

  def new
    @kontakt= Kontakt.new
  end

  def create
      @kontakt= Kontakt.new(params[:kontakt])
      @kontakt.request =request
      if @kontakt.deliver
        flash.now[:error]=nil
      else
        flash.now[:error] = 'nie mozna wyslac wiadomosci'
        render :new
      end
  end
end
