
DrySeason
=========

DrySeason is a dependecy injection Gem that allows low coupling between classes

Installation
------------

    gem install dryseason

Usage
-----

Add a dryseason.yml to your path define the instances you want to create ( source of the  [Dummy](https://github.com/sammyrulez/dryseasongem/blob/master/test/dummy.rb "dummy.rb") class here )

    dummy:
        class: Dummy
        args:
            stuff_str: Humble test


To access these instances add the DryInjectable to the class

    include dryseason::DryInjectable

After that you can access instances with the '_service' suffix

    dummy_service.print_dummy_stuff()