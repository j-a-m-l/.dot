# -*- encoding: utf-8 -*-

namespace :chef do

  cookbook_options = [:'cookbook-path', :format, :license, :copyright, :email]

  desc 'Creates a new cookbook and its specs (if knife-spec is installed)'
  task :new, ([:name] + cookbook_options) do |t, args|
    args.with_defaults({
      :'cookbook-path' => '.',
      format: 'md',
      license: 'mit',
      copyright: 'Juan Antonio Martín Lucas',
      email: 'TODO',
    })
    name = "#{args.name}-cookbook"

    `knife cookbook create #{name} #{compose cookbook_options, args}`
  end

  def compose options, args
    options.map {|option| "--#{option.to_s} '#{args[option]}'" }.join ' '
  end

end
