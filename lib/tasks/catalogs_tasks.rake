# frozen_string_literal: true

namespace :catalogs do
  desc "Creates a Catalog record. Usage `rake catalogs:create model field label value`"
  task create: :environment do
    _, *args = ARGV

    if args.size != 4
      puts "Invalid number of arguments"
      puts "You have to provide them in this order: model, field, label, value"
      exit
    end

    Catalogs::Catalog.create(
      model: args[0],
      field: args[1],
      label: args[2],
      value: args[3]
    )

    exit
  end
end
