Deface::Override.new(
                     :virtual_path => 'spree/admin/products/new',
                     :name => 'custom-product-new',
                     :insert_after => "erb[loud]:contains('f.text_field :available_on')",
                     :text =>
                        "<br>
                        <%= f.field_container :category_id, class: ['form-group'] do %>
                        <%= f.label :category_id, Spree.t(:category_id) %>
                        <%= f.error_message_on :category_id %>
                        <%= f.collection_select(:category_id, Category.all, :id, :name, { :prompt => 'Select a Category:', :selected => @product.category_id }, { class: 'form-control' }) %>
                        <% end %>

                        <%= f.field_container :subcategory_id, class: ['form-group'] do %>
                        <%= f.label :subcategory_id, Spree.t(:subcategory_id) %>
                        <%= f.error_message_on :subcategory_id %>
                        <%= f.collection_select(:subcategory_id, Subcategory.all, :id, :name, { :prompt => 'Select a Subcategory:', :selected => @product.subcategory_id }, { class: 'form-control' }) %>
                        <% end %>

                        <%= f.field_container :specific_id, class: ['form-group'] do %>
                        <%= f.label :specific_id, Spree.t(:specific_id) %>
                        <%= f.error_message_on :specific_id %>
                        <%= f.collection_select(:specific_id, Specific.all, :id, :name, { :prompt => 'Select a Specific:', :selected => @product.specific_id }, { class: 'form-control' }) %>
                        <% end %>

                        <%= f.field_container :brand_id, class: ['form-group'] do %>
                        <%= f.label :brand_id, Spree.t(:brand_id) %>
                        <%= f.error_message_on :brand_id %>
                        <%= f.collection_select(:brand_id, Brand.all, :id, :name, { :prompt => 'Select a Brand:', :selected => @product.brand_id }, { class: 'form-control' }) %>
                        <% end %>"
                    )
