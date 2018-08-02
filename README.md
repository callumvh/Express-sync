# Express-sync(A Powershell script)
Synchronize a directory with specific items of a larger directory without having to search the larger directory manually.

This may seem confusing but it is really simple and I could not find an application to do this task for me.

Imagine a friend of yours often comes to your house with a HDD and copies new research papers that come out once a week. Now you have a large database of research papers of every possible subject but your friend only collects certain subjects.
It is quite a hassle for you as you have need to manually search each of the subjects which your friend is interested in.

This application lets you choose your database of files as well as your destination, in this case is it the HDD, and the script will automatically loop through each of the subjects on the HDD and search for them on the database and return anything new, if there is nothing new it will not copy anything.

# Usage guide
The file is a powershell application which can run on linux but I would recommend you use Windows.

You will need to edit the file to choose the database/source directory in the file which the comments will guide you on in the file.

when running the script, you will be prompted to enter a path, this path is the destination path such as your external HDD, this will be asked for everytime you run the script so that multiple people can use your database.

You may need to edit the code to exactly how you do the searching and copying, for example you may not want to copy sub-directories.

Just to be clear, when I use the word 'database', I am not talking about an actual database but more like a file server, wherever you keep your source files.

# contribute
If anyone would like to make any changes, please feel free to do so, this is my first time using Github so please excuse any mistakes I have made with this.


