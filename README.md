## How to install

1. If the file ~.bash_profile doesn't exist, create it: Terminal >> `cd ~ && touch .bash_profile`
1. Open ~.bash_profile: Terminal >> `cd ~ && open -e .bash_profile` 
1. Add this to the end of the file (make sure you enter the correct path) and save:
  
       # Loading environment variables for the Onethinx Pack
       source /locationOfYour/VSCode_OnethinxPack_macOS/variables.env
    
1. Set the correct path in this pack's `variables.env` file.
1. Restart your machine (or log-out and log-in) to reload the environment variables.
