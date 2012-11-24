require 'rake'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*'].each do |file|

    next if %w[Rakefile README.md LICENSE id_rsa.pub gitconfig oh-my-zsh].include?(file)

    puts "Processing .#{file}..."
    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
      if replace_all
        replace_file(file)
      else
        print "\toverwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "\tskipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end

  # Handle SSH public key on its own
  puts "Linking SSH public key"
  system %Q{rm "$HOME/.ssh/id_rsa.pub"}
  system %Q{ln -s "$PWD/id_rsa.pub" "$HOME/.ssh/id_rsa.pub"}

  # Handle oh-my-zsh on its own
  puts "Linking OH-MY-ZSH"
  system %Q{mkdir -p "$HOME/.oh-my-zsh/custom"}
  system %Q{ln -is "$PWD/oh-my-zsh/oh-my-zsh.sh" "$HOME/.oh-my-zsh/oh-my-zsh.sh"}
  system %Q{ln -is "$PWD/oh-my-zsh/custom/ianbibby.zsh-theme" "$HOME/.oh-my-zsh/custom/ianbibby.zsh-theme"}
end

def replace_file(file)
  system %Q{rm "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "\tlinking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end
