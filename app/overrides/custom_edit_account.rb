Deface::Override.new(
                     :virtual_path => 'spree/users/edit',
                     :name => 'custom-user-edit',
                     :replace_contents => "div.panel-body",
                     :text => " <%= render partial: 'render_me/edit_user' %> "
                   )
