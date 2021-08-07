# !/bin/bash
# The shebang above is required to execute the bash script

# assignment.sh
#
# Clones the group's github repo onto a local machine and,
# executes all the scripts w.r.t their extension.
# The output from each script is packed into an array with is then,
# unpacked into a csv file.
# Ouput from each script includes
# :name, email, <slack_username>, biostack, <twitter_handle>, <hamming_distance>
# NB: Each slack username as well as twitter handle includes the "@" sign

echo 'Cloning git repo...'

# Link to group's repo
repo="https://github.com/Nyasita/HackBioAssignmentPauling.git"

# Git command to clone the group's repo
git clone $repo


assignment () {
    # Regex
    local repo_re="https://github.com/[a-zA-Z0-9._-]+/([a-zA-Z0-9._-]+)$"

    # Regex check to match folder name which will be cloned onto the local machine
    [[ $1 =~ $repo_re ]]
    local folder="${BASH_REMATCH[1]}"
    echo "Folder: $folder"

    local trim_dir="${folder/.git}"     # Regex match is trimmed of its ".git" extension
    local curr_dir=$(pwd)               # Present working directory

    # Pass files into variable from assigned directory where the git repo was cloned
    local assign_dir="${curr_dir}/${trim_dir}/*"

    IFS=$'\n'   # Input Field Separator: delimeter between fields when splitting line of input. ie. Array below
    declare -a file_array

    # Header for the CSV file
    printf 'Name\nEmail\nSlack Username\nBioStack\nTwitter Handle\nHamming Distance' | paste -sd "," >> output.csv;

    # Each file in directory is accessed during each iteration... 
    # to be executed and its output passed into the CSV file.
    # A check is made on each file to determine its extension,
    # hence the proper cli command is used to execute the file.
    for file in $assign_dir; do
        # Executing python files         
        if [[ $file =~ \.py ]]; then
            local result=$(cd "${curr_dir}/${trim_dir}" ; python3 $file)
            IFS=$'\n'
            local result_array=( $result )

            printf '%s\n' ${result_array[@]} | paste -sd "," >> output.csv;
        
        # Executing R files
        elif [[ $file =~ \.r ]]; then
            local result=$(cd "${curr_dir}/${trim_dir}" ; Rscript $file)
            IFS=$'\n'
            local result_array=( $result )

            printf '%s\n' ${result_array[@]} | paste -sd "," >> output.csv;

        # Executing C++ files 
        elif [[ $file =~ \.cpp ]]; then
            local exe_file=$(cd "${curr_dir}/${trim_dir}" ; gcc $file -o output.exe)
            local result=$(cd "${curr_dir}/${trim_dir}" ; output.exe)
            IFS=$'\n'
            local result_array=( $result )

            printf '%s\n' ${result_array[@]} | paste -sd "," >> output.csv;

        # Executing Javascript files 
        elif [[ $file =~ \.js ]]; then
            local result=$(cd "${curr_dir}/${trim_dir}" ; node $file)
            IFS=$'\n'
            local result_array=( $result )

            printf '%s\n' ${result_array[@]} | paste -sd "," >> output.csv;

        # Executing Bash Script files
        elif [[ $file =~ \.sh ]]; then
            exe_perm="chmod 755 $file"
            local result=$(cd "${curr_dir}/${trim_dir}" ; ./$file)
            IFS=$'\n'
            local result_array=( $result )

            printf '%s\n' ${result_array[@]} | paste -sd "," >> output.csv;
        
        # Executing PHP file
        elif [[ $file =~ \.php ]]; then
            exe_perm="chmod 755 $file"
            local result=$(cd "${curr_dir}/${trim_dir}" ; ./$file)
            IFS=$'\n'
            local result_array=( $result )

            printf '%s\n' ${result_array[@]} | paste -sd "," >> output.csv;

        # Executing Perl file
        elif [[ $file =~ \.pl ]]; then
            local result=$(cd "${curr_dir}/${trim_dir}" ; perl $file)
            IFS=$'\n'
            local result_array=( $result )

            printf '%s\n' ${result_array[@]} | paste -sd "," >> output.csv;
        fi
    done
    
}


assignment $repo    # Function call with argument "$repo"
