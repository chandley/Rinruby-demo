require 'rinruby'
class PlotController < ApplicationController
  def index
    require 'rinruby'

    R.image_path = Rails.root.join("app", "assets","images","sample.png").to_s
    R.eval("numbers <- c(12,34,56,20,44,65)")
    R.eval("png(filename=image_path)")
    R.eval("plot(numbers)")
    R.eval("dev.off()")
  end


end
