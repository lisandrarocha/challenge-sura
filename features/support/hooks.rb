IMAGES = "Imagens"
After do |scenario|
      @browser.screenshot.save("#{IMAGES}/#{scenario.__id__}.png")
      Dir.chdir(IMAGES) do
          embed("#{scenario.__id__}.png", "image/png", "SCREENSHOT")
  end
end
