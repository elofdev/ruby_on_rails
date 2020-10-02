class UsersController < ApplicationController
    # Rendereiza o formulário
    def new
        @user = User.new
    end
    # cria um post
    def create
        # criada a varável do tipo User
        @user = User.new(user_params)
        if @user.save
            flash[:success] = 'Usuário cadastrado com Sucesso!'
            redirect_to root_url
        else
            render 'new'
        end
    end

    # Função privada que filtra os parâmetros que o create(user_params) usará
    # e impede que seja passado algum parametro inesperado que cause algum comportamento errado

    private
    def user_params
        params.require(:user).permit(:email, :nome, :password, :password_confirmation)
    end

end