Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '7FwbzAA70qLmChOLYaqJg', '8dlaZ9gV1g0Tpb8iSsZlqpSvN15tGaWkn2WMpHxtA'
  provider :identity
end