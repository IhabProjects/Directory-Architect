# Directory Architect: Automated Directory Structure Creator

## Overview

**Directory Architect** is a Bash script designed to automate the creation of a comprehensive and organized directory structure within your home directory. Each folder and subfolder includes a `README.txt` file detailing its intended purpose, promoting a structured and efficient workspace.

## Features

- **Automated Directory Creation**: Establishes a hierarchical folder structure tailored for various file types and projects.
- **Descriptive `README.txt` Files**: Each directory contains a `README.txt` outlining its intended use.
- **Customizable Structure**: Easily modify the script to add, remove, or alter directories and descriptions to fit your specific needs.

## Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/IhabProjects/Directory-Architect.git
   cd Directory-Architect
   ```

2. **Make the Script Executable**:

   ```bash
   chmod +x organize_extended.sh
   ```

## Usage

To execute the script and create the directory structure:

```bash
./organize_extended.sh
```

This command will generate the folders and `README.txt` files in your home directory.

## Folder Structure

The script creates the following primary directories, each with relevant subdirectories:

- **Desktop**
  - `Shortcuts`: Contains shortcuts and links to frequently used applications and folders.
  - `Wallpapers`: Stores desktop wallpapers and background images.

- **Downloads**
  - `Images`: For downloaded images and photos.
  - `Documents`: For downloaded PDFs, Word documents, and other text files.
  - `Software`: Contains downloaded installers and software packages.

- **Documents**
  - `Work`: For work-related documents and projects.
    - `Reports`: Contains work reports and related documents.
    - `Presentations`: Stores presentation files.
  - `Personal`: For personal documents and files.
    - `Letters`: Contains personal letters and correspondence.
    - `Receipts`: Stores digital receipts and invoices.

- **Music**
  - `Artists`: Organized by artist names.
    - `Albums`: Contains albums by respective artists.
  - `Playlists`: For custom music playlists.

- **Pictures**
  - `Vacations`: Photos from various vacations.
    - `2025`: Photos from the year 2025.
  - `Family`: Family photos and portraits.
    - `Events`: Photos from family events and gatherings.

- **Videos**
  - `Movies`: Stored movie files.
  - `Tutorials`: Video tutorials and educational content.

- **Scripts**
  - `Bash`: Bash scripts for automation.
  - `Python`: Python scripts and projects.

- **Projects**
  - `Project_A`: Placeholder for a specific project.
    - `Docs`: Documentation for Project_A.
    - `Source`: Source code for Project_A.
  - `Project_B`: Placeholder for another project.
    - `Docs`: Documentation for Project_B.
    - `Source`: Source code for Project_B.

Each directory and subdirectory contains a `README.txt` file explaining its purpose.

## Customization

To customize the directory structure:

1. Open the `organize_extended.sh` script in a text editor.
2. Modify the `declare -A directories` section to add, remove, or change directories and their descriptions.
3. Save the changes and rerun the script to apply the new structure.

## Contributing

Contributions are welcome! Please fork this repository and submit a pull request with your enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

