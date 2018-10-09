Deface::Override.new(
                     :virtual_path => 'spree/wishlists/show',
                     :name => 'custom-wishlist-header',
                     :replace_contents => "div#wishlist_header",
                     :text => "<h1 class='wishlist_name'><%= @wishlist.name %></h1>"
                   )

Deface::Override.new(
                     :virtual_path => 'spree/wishlists/show',
                     :name => 'custom-wishlist-table',
                     :replace_contents => "table#wishlist",
                     :partial => 'spree/wishlists/wishlist_show_table'
                    )

Deface::Override.new(
                      :virtual_path => 'spree/wishlists/show',
                      :name => 'remove_tr',
                      :remove => "thead"
                    )

Deface::Override.new(
                      :virtual_path => 'spree/wishlists/show',
                      :name => 'custom-wishlist-button',
                      :replace_contents => "div.footer_links",
                      :text => " <%= render partial: 'render_me/wishlist_buttons' %> "
                    )

Deface::Override.new(
                      :virtual_path => 'spree/wishlists/index',
                      :name => 'no-wishlist',
                      :insert_after => "h1",
                      :text => " <%= render partial: 'render_me/wishlist_index_no' %> "
                    )
