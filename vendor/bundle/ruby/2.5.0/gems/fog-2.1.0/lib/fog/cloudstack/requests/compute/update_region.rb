module Fog
  module Compute
    class Cloudstack

      class Real
        # Updates a region
        #
        # {CloudStack API Reference}[http://cloudstack.apache.org/docs/api/apidocs-4.4/root_admin/updateRegion.html]
        def update_region(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateRegion') 
          else
            options.merge!('command' => 'updateRegion', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

