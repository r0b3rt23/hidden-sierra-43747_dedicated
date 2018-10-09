Deface::Override.new(
                     :virtual_path => 'spree/users/show',
                     :name => 'custom-my_account_title',
                     :replace_contents => "h1",
                     :text =>
                     '<div id="h1_account_title"><%= Spree.t(:my_account) %>
                     <span id="account-edit">(<%= link_to Spree.t(:edit), spree.edit_account_path %>)</span></div>'
                   )

Deface::Override.new(
                     :virtual_path => 'spree/users/show',
                     :name => 'custom-my_account',
                     :replace_contents => "div.account-summary",
                     :text =>
                     '<dl id="user-info">
                        <dt><%= Spree.t(:email) %></dt>
                          <dd><%= @user.email %></dd>
                        <br>

                        <dt><%= Spree.t(:full_name) %></dt>
                          <dd><%= @user.first_name %><%= "  "%><%= @user.last_name %></dd>
                        <br>

                        <dt><%= Spree.t(:credit_balance, scope: [:store_credits])%></dt>
                          <dd><%= Spree::Money.new(spree_current_user.total_available_store_credit, currency: Spree::Config[:currency]) %></dd>
                      </dl>'
                   )


Deface::Override.new(
                      :virtual_path => 'spree/users/show',
                      :name => 'custom-my_account-orders',
                      :replace_contents => "div.account-my-orders",
                      :partial => "spree/orders/account_my_order"
                    )

                    Deface::Override.new(
                                          :virtual_path => 'spree/users/show',
                                          :name => 'custom-my_account-log-in-out',
                                          :insert_after => "ul.ul_wishlist_account",
                                          :partial => "spree/orders/login_logout"
                                        )
