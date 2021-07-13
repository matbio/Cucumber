require "base64"

Before do 
    page.current_window.resize_to(1440, 900)

    @rest_page = RestPage.new
    @rest_list_page = RestListPage.new
    @order_page = OrderPage.new
end

Before('@restaurante_BreadEBakery') do
    visit '/restaurants/bread-bakery/menu'
end

Before('@restaurante_GreenFood') do
    visit '/restaurants/green-food/menu'
end

After do |scenario|
    #if scenario.failed?
        shot_file = page.save_screenshot("logs/screenshot.png")
        shot_b64 = Base64.encode64(File.open(shot_file, "rb").read)
        embed(shot_b64, "image/png", "Screenshot")
    #end
end