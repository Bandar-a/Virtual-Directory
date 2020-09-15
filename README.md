# Virtual-Directory
Scripts to working with virtual directory.

PrintVDir.bat
Batch script it will display all the virtual directory in the web server, it is valuable script to run on all the web servers of the environment using the Endpoint Detection and Response (EDR) or any other tools.


GetAllPublicHash.ps1
PowerShell script use the IISWebVirtualDirSetting class and the Path property, then eliminate any duplicates, and pipe the results to sort-object to put the output in alphabetical order.

it will display all the files that are public accessible with their SHA 256 hash, by looking for all the virtual directories along with their mapped physical directories. In addition, go recursive and collect the hash of all the file. Then you can submit to virus total and see the result, this is useful to detect the webshells and the adversary tools because most of  threat actors uploads their tools through the webshell directly to the same path of the webshell is exist.

Example:

![](test.gif)
