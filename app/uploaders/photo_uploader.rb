class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  # Remove everything else
  def default_url(*args)
    if self.model.category == "Skis"
      ActionController::Base.helpers.asset_path([version_name, "ski_default.png"].compact.join('_'))
    elsif self.model.category == "Snowboard"
      ActionController::Base.helpers.asset_path([version_name, "snow_default.png"].compact.join('_'))
    elsif self.model.category == "Other"
      ActionController::Base.helpers.asset_path([version_name, "battons_default.png"].compact.join('_'))
    end
  end
end
