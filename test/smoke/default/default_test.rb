# # encoding: utf-8

# Inspec test for recipe ruby-windows::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('Ruby 2.1.6-p336-x64') do
  it { should be_installed }
end

script = <<-EOH
  ruby -v 
EOH

describe powershell(script) do
  its('stdout') { should match "ruby 2.1.6p336*" }
end