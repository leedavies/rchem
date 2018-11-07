#' Reads the contents of the SD file from filepath and returns the contents
#' as a data frame, the columns of the data frame are the properties defined within the 
#' SD file.
#'
#' @param filepath 
#'
#' @return dataframe containing the sd file contents
#' @export
#'
#' @examples
read_sdfile <- function(filepath)
{
    file <- read_contents(filepath);
    return <- create_dataframe(file);
}

read_contents <- function(filepath)
{
    lines <- readLines(filepath);
    return <- paste(lines, collapse="\n");
}

create_dataframe <- function(file)
{
    # split the SD file on the $$$$ molecule terminator
    mols <- strsplit(file, '$$$$');
    names <- c();
    
    for(mol in mols)
    {
        datalines <- strsplit(mol[[1]], '> ');
        # get the first lines which contains the molname and structure
        molline <- datalines[[1]];
        # split the line on the \n characters
        # get the name (if any)
        
        # get the molcule(if any)
        print(molline[1]);
    }
    
    return <- data.frame();
}