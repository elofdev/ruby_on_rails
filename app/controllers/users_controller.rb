class UsersController < ApplicationController
    # Rendereiza o formulário
    def new
        @user = User.new
    end
    # cria um post
    def create
    end
end
