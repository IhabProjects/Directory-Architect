#!/bin/bash
# organize_extended.sh
# This script creates an extensive folder structure in your home directory.
# Each folder (and subfolder) receives a README.txt file that explains its purpose.

# Function to create a folder and add a README.txt inside.
create_folder() {
    local folder_path="$1"
    local description="$2"
    if [ ! -d "$folder_path" ]; then
        mkdir -p "$folder_path"
        echo "Created folder: $folder_path"
    else
        echo "Folder already exists: $folder_path"
    fi

    # Write description to README.txt in the folder.
    local readme_file="$folder_path/README.txt"
    echo "$description" > "$readme_file"
    echo "Created README: $readme_file"
}

# =======================
# Main Directories in HOME
# =======================
declare -A main_dirs
main_dirs["Desktop"]="This folder contains your desktop files and shortcuts."
main_dirs["Downloads"]="This folder stores all your downloaded files."
main_dirs["Documents"]="This folder holds your personal documents and text files."
main_dirs["Pictures"]="This folder is for images and photographs."
main_dirs["Music"]="This folder contains music and audio recordings."
main_dirs["Videos"]="This folder is for video files and media clips."
main_dirs["Projects"]="This folder houses all your project work."
main_dirs["Scripts"]="This folder is dedicated to scripts and automation code."
main_dirs["Work"]="This folder contains work-related documents and files."
main_dirs["School"]="This folder stores academic materials, notes, and assignments."
main_dirs["Backups"]="This folder contains backups of important files."
main_dirs["Archives"]="This folder is for archiving old or infrequently used files."

echo "Creating main directories..."
for dir in "${!main_dirs[@]}"; do
    create_folder "$HOME/$dir" "${main_dirs[$dir]}"
done

# =======================
# Desktop Subfolders
# =======================
create_folder "$HOME/Desktop/Shortcuts" "This folder contains shortcuts and links to frequently used applications and folders."
create_folder "$HOME/Desktop/Wallpapers" "This folder stores desktop wallpapers and background images."

# =======================
# Downloads Subfolders
# =======================
create_folder "$HOME/Downloads/Software" "This folder is for downloaded software installers and packages."
create_folder "$HOME/Downloads/Software/Applications" "Downloaded applications are stored here."
create_folder "$HOME/Downloads/Software/Drivers" "Downloaded drivers and system utilities are stored here."
create_folder "$HOME/Downloads/Software/Updates" "Software update packages are stored here."

create_folder "$HOME/Downloads/Images" "This folder is for downloaded images and photos."
create_folder "$HOME/Downloads/Images/Wallpapers" "Downloaded wallpapers."
create_folder "$HOME/Downloads/Images/Screenshots" "Screenshots captured from your system."
create_folder "$HOME/Downloads/Images/Photos" "Personal photos downloaded from various sources."

create_folder "$HOME/Downloads/Videos" "This folder is for downloaded video files."
create_folder "$HOME/Downloads/Videos/Movies" "Downloaded movies."
create_folder "$HOME/Downloads/Videos/Clips" "Short video clips and recordings."

create_folder "$HOME/Downloads/Documents" "This folder is for downloaded documents and PDFs."
create_folder "$HOME/Downloads/Documents/PDFs" "Downloaded PDF files."
create_folder "$HOME/Downloads/Documents/Manuals" "User manuals and guides."

# =======================
# Documents Subfolders
# =======================
create_folder "$HOME/Documents/Reports" "This folder contains report documents and analyses."
create_folder "$HOME/Documents/Reports/Financial" "Financial reports and statements."
create_folder "$HOME/Documents/Reports/Technical" "Technical reports, specifications, and system analyses."
create_folder "$HOME/Documents/Reports/Research" "Research papers and articles."

create_folder "$HOME/Documents/Essays" "This folder is for essays, articles, and written assignments."
create_folder "$HOME/Documents/Essays/Personal" "Personal essays and creative writing."
create_folder "$HOME/Documents/Essays/Academic" "Academic essays and scholarly articles."

create_folder "$HOME/Documents/Spreadsheets" "This folder is for spreadsheets and data files."
create_folder "$HOME/Documents/Spreadsheets/Budgets" "Budget planning and financial spreadsheets."
create_folder "$HOME/Documents/Spreadsheets/Data" "General data tables and statistical sheets."

# =======================
# Pictures Subfolders
# =======================
create_folder "$HOME/Pictures/Wallpapers" "This folder stores wallpapers and background images."
create_folder "$HOME/Pictures/Screenshots" "This folder contains screenshots captured from your system."
create_folder "$HOME/Pictures/Personal" "This folder is for personal photos and memories."
create_folder "$HOME/Pictures/Work" "Work-related images and graphics."

# =======================
# Music Subfolders
# =======================
create_folder "$HOME/Music/Albums" "This folder contains complete music albums."
create_folder "$HOME/Music/Albums/Rock" "Rock music albums."
create_folder "$HOME/Music/Albums/Pop" "Pop music albums."
create_folder "$HOME/Music/Albums/Jazz" "Jazz and blues albums."

create_folder "$HOME/Music/Singles" "This folder contains individual songs."
create_folder "$HOME/Music/Podcasts" "Downloaded podcasts and audio shows."
create_folder "$HOME/Music/Playlists" "Custom playlists and music collections."

# =======================
# Videos Subfolders
# =======================
create_folder "$HOME/Videos/Movies" "This folder contains full-length movies."
create_folder "$HOME/Videos/Movies/Action" "Action movies."
create_folder "$HOME/Videos/Movies/Drama" "Dramatic movies."
create_folder "$HOME/Videos/Movies/Comedy" "Comedy movies."

create_folder "$HOME/Videos/TV_Shows" "This folder stores TV series and episodes."
create_folder "$HOME/Videos/Clips" "This folder contains short video clips and recordings."

# =======================
# Projects Subfolders
# =======================
create_folder "$HOME/Projects/Personal" "This folder is for personal projects and experiments."
create_folder "$HOME/Projects/Personal/Coding" "Personal coding projects and scripts."
create_folder "$HOME/Projects/Personal/Writing" "Personal writing, blogs, and articles."
create_folder "$HOME/Projects/Personal/Art" "Personal art and design projects."

create_folder "$HOME/Projects/Work" "This folder is for work-related projects and collaborations."
create_folder "$HOME/Projects/Work/Development" "Development projects and software."
create_folder "$HOME/Projects/Work/Documentation" "Documentation and project planning."

create_folder "$HOME/Projects/Hobby" "This folder is for hobby projects and creative endeavors."
create_folder "$HOME/Projects/Hobby/Photography" "Photography projects and photo edits."
create_folder "$HOME/Projects/Hobby/DIY" "Do-it-yourself projects and crafts."

# =======================
# Scripts Subfolders
# =======================
create_folder "$HOME/Scripts/Bash" "This folder contains Bash scripts and automation code."
create_folder "$HOME/Scripts/Python" "This folder is for Python scripts and utilities."
create_folder "$HOME/Scripts/Misc" "This folder stores miscellaneous scripts."

# =======================
# Work Subfolders
# =======================
create_folder "$HOME/Work/Meetings" "This folder stores work meeting documents."
create_folder "$HOME/Work/Meetings/Agendas" "Meeting agendas and schedules."
create_folder "$HOME/Work/Meetings/Minutes" "Minutes and notes from meetings."

create_folder "$HOME/Work/Presentations" "This folder contains presentation files and slides."
create_folder "$HOME/Work/Presentations/Slides" "Slide decks for presentations."
create_folder "$HOME/Work/Presentations/Templates" "Templates and boilerplate slides."

create_folder "$HOME/Work/Reports" "This folder contains work reports and documentation."
create_folder "$HOME/Work/Reports/Monthly" "Monthly work reports."
create_folder "$HOME/Work/Reports/Quarterly" "Quarterly summaries and reports."

# =======================
# School Subfolders
# =======================
create_folder "$HOME/School/Assignments" "This folder is for school assignments and homework."
create_folder "$HOME/School/Assignments/Math" "Math assignments and problem sets."
create_folder "$HOME/School/Assignments/Science" "Science assignments and lab reports."
create_folder "$HOME/School/Assignments/Literature" "Literature assignments and essays."

create_folder "$HOME/School/Notes" "This folder contains lecture notes and study materials."
create_folder "$HOME/School/Notes/Lectures" "Detailed lecture notes."
create_folder "$HOME/School/Notes/Tutorials" "Tutorial notes and guides."

create_folder "$HOME/School/Exams" "This folder is for exam preparation materials."
create_folder "$HOME/School/Exams/Past_Exams" "Archived past exam papers."
create_folder "$HOME/School/Exams/Study_Guides" "Study guides and revision notes."

# =======================
# Backups Subfolders
# =======================
create_folder "$HOME/Backups/Daily" "Daily backup files."
create_folder "$HOME/Backups/Weekly" "Weekly backup archives."
create_folder "$HOME/Backups/Monthly" "Monthly backup archives."

# =======================
# Archives Subfolders
# =======================
create_folder "$HOME/Archives/Old_Documents" "This folder archives old documents for historical reference."
create_folder "$HOME/Archives/Old_Documents/2010s" "Documents from the 2010s."
create_folder "$HOME/Archives/Old_Documents/2000s" "Documents from the 2000s."

create_folder "$HOME/Archives/Old_Projects" "This folder archives projects that are no longer active."
create_folder "$HOME/Archives/Old_Projects/Completed" "Projects that have been completed."
create_folder "$HOME/Archives/Old_Projects/Abandoned" "Projects that were started but later abandoned."

# =======================
# Final Message
# =======================
echo "Extended folder organization complete."
