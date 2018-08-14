# Entry Files

A Entry File is a File that contains Informations about a Changelog Entry.

## Struct of a Entry File
```
title:    {The Title of the Entry. Will be used in the Changelog File} 
type:     {Changelog Type eg.: "Add"}
id:       {The Entry ID. It will be generated Randomly. Its a 4 Char String}
[release: {Only added if the Entry is used in a Pre-Release. Used if a Changelog Release will be executed with the '--delete-pre' Option}]
```

## Name of a Entry File

The Name of a Entry File will be created by the Name of the current Git Branch.
If multiply Files exists with the Same Name there will be added a '-NUM' to the name of the File, where `NUM` will be the Number of all Existing Files with the Same Name.
