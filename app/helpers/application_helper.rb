module ApplicationHelper

  def randomized_background_image
    images = ["assets/foo.jpg", "assets/random.jpg", "assets/super_random"]
    images[rand(images.size)]
  end
end
