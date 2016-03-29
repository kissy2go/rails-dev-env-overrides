@source_root = ENV['SOURCE_ROOT'] || 'https://raw.githubusercontent.com/kissy2go/rails-dev-env-overrides/master'
@dev_files = %w{
  .envrc
  config/initializers/overrides.rb
  docker-compose.yml
}

@dev_files.each do |file|
  get "#{@source_root}/template/#{file}", file
end

file '.gitignore.local', @dev_files.unshift('.gitignore.local', '.envrc.local').join("\n")
git config: 'core.excludesfile .gitignore.local'
