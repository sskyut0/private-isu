worker_processes 1
preload_app true
listen "0.0.0.0:8080"
stdout_path "/var/log/private-isu/unicorn.log"
stderr_path "/var/log/private-isu/unicorn.log"
