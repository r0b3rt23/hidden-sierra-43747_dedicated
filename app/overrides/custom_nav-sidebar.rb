Deface::Override.new(
                     :virtual_path => 'spree/admin/shared/sub_menu/_product',
                     :name => 'custom-product-tab',
                     :insert_after => "erb[loud]:contains('tab :products')",
                     :text => " <%= tab :categories, url: '/categories' %>
                                <%= tab :subcategories, url: '/subcategories' %>
                                <%= tab :specifics, url: '/specifics' %>
                                <%= tab :brands, url: '/brands' %>"
                    )
