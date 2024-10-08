# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/repos/cpp"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "charas"; then

  # Create a new window inline within session layout definition.
new_window "editor"

    #Run the command in terminal and open the file in neovim
        run_cmd "nvim main.cpp"
  # Load a defined window layout.
  #load_window "example"
  #open the terminal and set the size to 30
    split_v 15 

#    run_cmd "cd ~/repos/cpp"

  # Select the default active window on session creation.
    select_pane 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
