# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/VitalFit"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "gaanja"; then

  # Create a new window inline within session layout definition.
  new_window "editor"

  #Run the command in terminal and open the file in neovim 
  	run_cmd "nvim vitalfit_frontend/src/App.tsx"
  # Load a defined window layout.
  #load_window "example"
split_v 15
  # Select the default active window on session creation.
  select_pane 1
  run_cmd "cd vitalfit_frontend"
	#run_cmd "npm start"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
