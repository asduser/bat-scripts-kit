# bat-scripts-kit

Some useful solutions, which can do your work in Windows easier.

I will share *.bat scripts here. If only one of them helps you or simplifies your routine work - it will be great:)<br/>
You can see the list of existing script below.

1. <a href="#easy-backup">Easy-backup</a>.
2. <a href="#path-length-checker">Path-length-checker</a>.

<hr/> 

<a name="easy-backup"><b>Easy-backup</b></a>

Simple script for creating folders\files backup. You can specify explicitly the property for compressing files.

Easy steps to backup:
<ul>
  <li> Open `config.ini` file and specify necessary attributes. </li>
  <li> Run `easy-backup.bat` and wait for the end of the process. </li>
</ul>

<u>Sample config.ini:</u><br/>
```ini
Source="D:\Music\Queen"
Destination="D:\BACKUPS\Music"
WinRar="C:\Program Files\WinRar\rar.exe"
```

<hr/> 

<a name="path-length-checker"><b>Path-length-checker</b></a>

<p>Useful script to find all existing files, which have length `>` than specified value. It may essentially save your own time when you need to find all files, which have path-length > 260 symbols.</p>

<p>Also you may find files with any size, just change parameter `_pathLength` at the top of file.</p>

<hr/>  
