env_keys = YAML.load(File.open('config/environment_keys.yaml'))

# Load the environment keys for use inside step definitions
AfterConfiguration do
  $env_keys = env_keys
  $env_keys.freeze
end
