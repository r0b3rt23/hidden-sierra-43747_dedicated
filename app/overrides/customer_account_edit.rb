Deface::Override.new(
                     :virtual_path => 'spree/users/edit',
                     :name => 'custom-account_edit',
                     :replace_contents => ".panel.panel-default",
                     :partial => "spree/orders/account_edit"
                   )
