Deface::Override.new(
                     :virtual_path => 'spree/user_registrations/new',
                     :name => 'custom-user-signup',
                     :replace_contents => "div#new-customer",
                     :text => " <%= render partial: 'render_me/new_user' %> "
                   )
