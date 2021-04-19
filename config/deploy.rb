set :application, "nova-front"
set :repo_url, "git@github.com:alex-lairan/NovaFront.git"

set :deploy_to, -> { "/data/#{fetch(:application)}" }

set :ssh_options, {
  forward_agent: true,
  keys: [
    File.join(ENV['HOME'], '.ssh', 'id_rsa'),
    File.join(ENV['HOME'], '.ssh', 'id_ed25519'),
  ]
}

set :keep_releases, 5

namespace :deploy do
  task :build do
    on roles(:all) do
      within release_path do
        execute *%w[/home/deployer/.asdf/installs/mint/0.12.0/bin/mint build -e .env.production]
      end
    end
  end
end

after 'deploy', 'deploy:build'
