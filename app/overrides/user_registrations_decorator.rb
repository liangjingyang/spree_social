Deface::Override.new(:virtual_path => "spree/user_registrations/new",
                     :name => "add_socials_to_login_extras",
                     :insert_after => "[data-hook='login_extras']",
                     :text => %q(<%= render :partial => 'spree/shared/social' unless session[:omniauth] %>),
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/user_sessions/new",
                     :name => "add_socials_to_login_extras",
                     :insert_after => "[data-hook='login_extras']",
                     :partial => "spree/shared/social",
                     :disabled => false)
