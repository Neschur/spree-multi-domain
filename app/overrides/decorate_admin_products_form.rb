Deface::Override.new(
  :virtual_path => "spree/admin/shared/_product_tabs",
  :name => "multi_domain_admin_product_form_meta",
  :insert_bottom => "[data-hook='admin_product_tabs']",
  text: "<%= content_tag :li, :class => ('active' if current == 'Stores') do %>
      <%= link_to_with_icon 'shopping-cart', Spree.t(:stores), stores_admin_product_path(@product) %>
    <% end %>",
  :disabled => false)
