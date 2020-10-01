class User < ApplicationRecord

    # Cria uma hash de segurança para senha
    # temos qyw instalar a gem 'bcrypt', '~> 3.1.7'
    # primeiro apenas dexomentar essa linha no arquivo Gemfile: gem 'bcrypt', '~> 3.1.7'
    has_secure_password

    # Validação do formato do email através de uma espressão regular
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

    validades :name, presence: true, length: { maximun: 50 }
    validades :password, length: {minimum:6}
    validades :email, presence:true, length: {maximum:255},
                                    format: {with: VALID_EMAIL_REGEX},
                                    uniqueness: {case_sensitive: true}

end