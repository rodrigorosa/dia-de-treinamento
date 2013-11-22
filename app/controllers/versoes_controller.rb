class VersoesController < ApplicationController
  def index
    @versoes = Versao.ultimas.limit(10)
  end

  def show
    @versao = Versao.find(params[:id])
  end
end
