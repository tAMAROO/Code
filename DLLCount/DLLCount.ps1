#######################################################################
#                                                                     #
#                       DLLCount                                      #
#                                                                     #
#   A simple script that counts the total number of .DLL files in     #
#   the C:\ Directory and outputs the number.  Also shows the folders #
#   that were not able to be opened, and outputs the total time       #
#   it took for the script to run.                                    #
#                                                                     #
#######################################################################

# Define variables
$Path = "C:\"
$Filter = "*.dll"
$logFile = "C:\Documents\report.log"

# Variable to count running time of the script
$countTime = Measure-Command {

# Function to write log entry
function Write-Log {
    param (

        [string]$message,
        [string]$logFilePath
    )

    $logEntry = "$message"
    Add-Content -Path $logFilePath -Value $logEntry
}

# Define the searchUnique function
function SearchUnique {
    param (
        [string]$Folder
    )

    try {

        Get-ChildItem -Path $Folder -Directory -ErrorAction Stop | ForEach-Object {
            SearchUnique $_.FullName
        }
    }
    catch {
        # Log the error when unable to access the folder
        Write-Log -message "Unable to access $Folder" -logFilePath $logFile
    }
}


try {
    # Run the file count command and capture the output
    $output = Get-ChildItem -Recurse -Force -Path $Path -Filter $Filter -ErrorAction SilentlyContinue | Measure-Object | Select-Object -ExpandProperty Count

    # Log the output
    Write-Log -message "File count:`n===============================`n $output`n`nFolders Inaccessible:`n===============================" -logFilePath $logFile

    # Run the searchUnique function
    SearchUnique -Folder $Path

} catch {
    # Error handling
    Write-Log -label "ERROR" -message "An error occurred: $_" -logFilePath $logFile
}

}

# Output of the time it took to run the script
$countTime.TotalSeconds | Write-Log -message "`nTotal Script Time:`n===============================`n $countTime" -logFilePath $logFile
