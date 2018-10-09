Deface::Override.new(
                     :virtual_path => 'spree/users/_wishlists',
                     :name => 'custom-wishlist-account-h3',
                     :replace => "h3",
                     :text => '<h3 class="h3_wishlist_account"><%= Spree.t(:My_Wishlists)%></h3>'
                   )


                   Deface::Override.new(
                                        :virtual_path => 'spree/users/_wishlists',
                                        :name => 'custom-wishlist-account-ul',
                                        :replace => "ul",
                                        :text => "<ul class='ul_wishlist_account'>
                                                    <% @user.wishlists.each do |wl| %>
                                                      <% if !wl.is_private? || @user == spree_current_user %>
                                                        <div><%= link_to 'Go to Wishlist', wl %></div>
                                                      <% end -%>
                                                    <% end -%>
                                                  </ul>"
                                      )
