module  DryInjectable

  def method_missing(m, *args, &block)
    puts "DryInjectable catches #{m}"
    strMethodName = m.to_s
    if strMethodName.end_with?("_service")
       serviceName = strMethodName.slice(0, strMethodName.index("_service"))
       service = DryFactory.getServiceInstance(serviceName)
       return service
      else
       puts "There's no method called #{m} here -- please try again."
       raise NoMethodError
      end
  end

end