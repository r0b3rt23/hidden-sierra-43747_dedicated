Deface::Override.new(
  :virtual_path => "spree/shared/_search",
  :name => "set_button_to_green",
  :replace => "<%= submit_tag Spree.t(:search), name: nil, class: 'btn btn-success', id: 'btn-id' %>",
  :text => "<button type='submit' class='btn btn-success' data-disable-with='Search'>
            <span class='glyphicon glyphicon-search'></span>
            </button>"
)
