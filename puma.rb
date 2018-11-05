#!/usr/bin/env puma

directory '/home/deploy/apps/DevOps-RoR/current'
rackup "/home/deploy/apps/DevOps-RoR/current/config.ru"
environment 'production'


pidfile "/home/deploy/apps/DevOps-RoR/shared/tmp/pids/puma.pid"
state_path "/home/deploy/apps/DevOps-RoR/shared/tmp/pids/puma.state"
stdout_redirect '/home/deploy/apps/DevOps-RoR/shared/log/puma_access.log', '/home/deploy/apps/DevOps-RoR/shared/log/puma_error.log', true


threads 0,16


bind 'unix:///home/deploy/apps/DevOps-RoR/shared/tmp/sockets/DevOps-RoR-puma.sock'

workers 0


prune_bundler


on_restart do
  puts 'Refreshing Gemfile'
  ENV["BUNDLE_GEMFILE"] = "/home/deploy/apps/DevOps-RoR/current/Gemfile"
end