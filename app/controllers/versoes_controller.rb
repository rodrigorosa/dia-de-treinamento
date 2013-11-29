class VersoesController < ApplicationController
  def index
    @versoes = Versao.ultimas.limit(10)
  end

  def show
    @versao = Versao.find(params[:id])
    @usuarios_itens = @versao.itens_versao.incluir_treinamento.por_modulo.group_by(&:usuario)
  end

end
