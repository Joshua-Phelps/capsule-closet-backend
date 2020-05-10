CarrierWave.configure do |config|

    config.fog_provider = 'fog/aws' 
    config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
      :region => ENV['REGION'],
      :endpoint => ENV['AWS_ENDPOINT']
      # :path_style => true

    }
    config.fog_directory = ENV['S3_BUCKET_NAME']
    config.storage = :fog
    config.fog_public     = false  
  


    # config.root = Rails.root.join('tmp')
    # config.cache_dir = 'carrierwave'
    # config.fog_credentials = {
    #   provider:              'AWS',                        # required
    #   aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],                         # required unless using use_iam_profile
    #   aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],                 # required unless using use_iam_profile
    #   region:                ENV['AWS_REGION'],
    #   endpoint:              ENV['AWS_ENDPOINT'], # optional, defaults to nil
    # }
    # config.fog_directory  = ENV['S3_BUCKET']
    # config.fog_public     = false                                                 # optional, defaults to true
    # config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}

end

