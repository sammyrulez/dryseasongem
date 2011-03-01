require "yaml"

class DryFactory

   @@servicies = {}

   @@dry_config = 'dryseason.yml'

   def self.dry_config=(path)
     @@dry_config = path
   end

   def self.getServiceInstance(srvId)
    if @@servicies[srvId]
      return  @@servicies[srvId]
    else
      raw_config = File.read(@@dry_config)
      config_data = YAML.load(raw_config)
      service = config_data[srvId]
      if service
         @@servicies[srvId] = Kernel.const_get(service["class"]).new(service["args"])
         return  @@servicies[srvId]
      else
        raise "#{srvId} not found in #{@@dry_config}"
      end

    end
  end
end