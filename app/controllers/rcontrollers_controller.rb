class RcontrollersController < ApplicationController
  def index
    render plain: '¿Qué quieres que diga?'  
  end

  def hola
    render plain: 'Hola Coding Dojo'  
  end

  def dice_hola
    render plain: '¡Diciendo Hola!'  

  end

  def nombre
    if params[:st]=='joe'
      render plain: '¡Saludando a Joe!'    
  elsif params[:st]=='michael'
      redirect_to '/dice/hola/joe'
  end
  end

  def visita
    @@visit = @@visit + 1
    if @@visit==1
      render plain: "Haz visitado esta página #{@@visit} vez"
      elsif @@visit>1
      render plain: "Haz visitado esta página #{@@visit} veces"
    end
  end

  def restart
    @@visit=0
    render plain: "¡Sesión destruida!"
  end
end
