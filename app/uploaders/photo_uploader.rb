class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  # Remove everything else
  def default_url(*args)
    ActionController::Base.helpers.asset_path([version_name, "product_default.jpg"].compact.join('_'))
  end
end
