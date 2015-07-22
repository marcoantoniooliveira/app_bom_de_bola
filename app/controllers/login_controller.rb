class LoginController < ApplicationController
  def login
    if request.post?
      email = params[:email]
      password = params[:password]

      if email.blank? && password.blank?
        flash[:notice] = "Informe email e senha"
        return
      end

      if email.blank?
        flash[:notice] =  "Informe um e-mail"
        return
      end

      if password.blank?
        flash[:notice] =  "Informe uma senha"
        return
      end

      user = User.auth(email,password)
      if !person
        flash[:notice] = "Falha no login"
        return
      end

      flash[:notice] = "Bem-vindo, #{user.name}!"
      session[:id] = user.id
      session[:name] = user.name
      session[:admin] = user.admin
      redirect_to user_path
    end
  end

  def logout
    session[:id] = nil
    session[:name] = nil
    session[:admin] = nil
    redirect_to action: :login
  end
end
