Deface::Override.new(
                     :virtual_path => 'spree/checkout/_summary',
                     :name => 'custom-order-summary',
                     :remove => "tr.total"
                    )
