class CoachNotifier < ActionMailer::Base
  default from: "bom_de_bola@hackercidadao.com.br"

  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
          :subject => 'Bem vindo #{@user.name}!' )
  end

  def changed_match(match,teams, prev_match)
    @match = match
    @prev_match = prev_match
    teams.each do |team|
       @user = team.user
        mail( :to => team.user.email,
              :subject => 'Atenção #{@user.name}, sua partida sofreu alterações!' )
    end
  end
end
