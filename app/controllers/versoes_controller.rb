class VersoesController < ApplicationController
  def index
    @versoes = Versao.ultimas.limit(10)
  end

  def show
    @versao = Versao.find(params[:id])
    @usuarios_itens = montar_estrutura @versao
  end

  def montar_estrutura(versao)
    usuarios_itens = {}
    versao.itens_versao.not_null.por_modulo.each do |item| 
      usuarios_itens[item.usuario] ||= []
      usuarios_itens[item.usuario] << item
    end
    usuarios_itens
  end
end
