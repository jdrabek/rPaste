class PasteController < ApplicationController
  def add
  end

  def show
    require 'uv'
    @paste = Paste.find(params[:id].to_i(36))
    @hilighted = Uv.parse( @paste.txt, "xhtml", params[:hl], false, "blackboard")

  end

  def delete
  end

  def repaste
  end

end
