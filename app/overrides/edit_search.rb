Override.new(
  :virtual_path => "spree/shared/_search",
  :name => "set_button_to_green",
  :replace => "erb[loud]:contains('submit_tag')",
  :text => "<button type='submit' class='btn btn-success' data-disable-with='Search'>
            <span class='glyphicon glyphicon-search'></span>
            </button>"
)
