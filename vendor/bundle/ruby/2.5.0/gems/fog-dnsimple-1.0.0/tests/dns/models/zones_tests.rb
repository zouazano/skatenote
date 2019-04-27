for provider, config in dns_providers

  domain_name = uniq_id + '.com'

  Shindo.tests("Fog::DNS[:#{provider}] | zones", [provider.to_s]) do

    zone_attributes = {
      :domain => domain_name
    }.merge!(config[:zone_attributes] || {})

    collection_tests(Fog::DNS[provider].zones, zone_attributes, config[:mocked])

  end

end