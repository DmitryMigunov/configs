abbr -a e nvim
abbr -a vim nvim
abbr -a g git
abbr -a ggpull 'git pull origin'
abbr -a l eza
abbr -a ls eza
abbr -a ll 'eza -l'
abbr -a lll 'eza -la'

set -g fish_prompt_pwd_dir_length 3

set -g __fish_git_prompt_show_informative_status 1

function fish_prompt
  set_color brblack
  echo -n "["(date "+%H:%M")"] "
  set_color blue
  echo -n (prompt_hostname)
  if [ $PWD != $HOME ]
    set_color brblack
    echo -n ':'
    set_color yellow
    echo -n (basename $PWD)
  end
  set_color green
  printf '%s ' (__fish_git_prompt)
  set_color red
  echo -n '| '
  set_color normal
end
