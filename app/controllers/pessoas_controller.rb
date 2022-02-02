class PessoasController < ApplicationController

  def index
    @pessoas = Pessoa.all
  end

  def show
    @pessoa = Pessoa.find(params[:id])

    respond_to do |format|
      format.html
    end
  end
  
  def new 
    @pessoa = Pessoa.new 

    respond_to do |format|
      format.html
    end
  end
  
  def create
    @pessoa = Pessoa.new(pessoa_params)

    #respond_to do |format|

      if @pessoa.save
        #format.html { redirect_to pessoa_url }
        redirect_to @pessoa
      else
        #format.html { render :new }
        render :new, status: :unprocessable_entity
      end
    #end  
  end

  def edit
    @pessoa = Pessoa.find(params[:id])

    respond_to do |format|
     format.html
    end
  end
  
  def updtae
    @pessoa = Pessoa.find(params[:id])

    respond_to do |format|

      if @pessoa.update_attributes(pessoa_params)
        format.html { redirect_to pessoas_url }
        #redirect_to @pessoa
      else
        format.html { render :edit }
        #render :edit, status: :unprocessable_entity  
      end
    end
  end
  
  def destroy
    @pessoa = Pessoa.find(params[:id])
    @pessoa.destroy
    redirect_to root_path, status: :see_other

    respond_to do |format|
     format.html
    end
  end
  
  private

  def pessoa_params
    params.require(:pessoa).permit(:nome, :email, :cpf, :telefone)    
  end
end
