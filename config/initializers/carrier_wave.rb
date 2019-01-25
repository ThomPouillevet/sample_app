if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAIWHW7ZEMTBBQLIBA'],
      # :region => ENV['eu-central-1'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
    # config:set S3_REGION='eu-central-1'
  end
end
