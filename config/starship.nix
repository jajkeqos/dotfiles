{
  command_timeout = 3000;
  format = "$directory$hostname$nix_shell$git_branch$git_commit$git_state$git_status$cmd_duration$line_break$character";
  right_format = "$go$nodejs$aws$direnv";

  add_newline = true;

  character = {
    success_symbol = "[󱙺](bold green)";
    error_symbol = "[󱚢](bold red)";
    vimcmd_symbol = "[󱙺](bold purple)";
    vimcmd_replace_symbol = "[󱙺](bold green)";
    vimcmd_replace_one_symbol = "[󱙺](bold green)";
    vimcmd_visual_symbol = "[󱙺](bold yellow)";
  };

  username = {
    format = "upamune($style) ";
    disabled = false;
    show_always = true;
  };

  hostname = {
    ssh_only = true;
    ssh_symbol = "";
    format = "at [$hostname](bold blue) ";
    disabled = false;
  };

  git_commit.format = ''( [\($hash$tag\)]($style))'';
  git_state.format = " [\\($state( $progress_current/$progress_total)\\)]($style)";

  git_status = {
    ahead = "↑";
    behind = "↓";
    conflicted = "±";
    deleted = "×";
    diverged = "↕";
    modified = "‼";
    renamed = "≡";
    stashed = "⌂";
    format = ''( [\[$all_status$ahead_behind\]]($style))'';
  };

  git_branch = {
    format = " → [$symbol$branch(:$remote_branch)]($style)";
    symbol = "";
  };

  directory = {
    read_only = "(ro)";
    format = "[$read_only]($read_only_style) [$path]($style) ";
  };

  nix_shell.format = "[󱄅]($style) ";
}