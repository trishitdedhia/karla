# Karla
Karla is a bash-based package manager and executor for specifically image processing utilities on the command line interface.
<br><br>

> ### Creator's Note
> Karla started as a culmination project (my own initiative - not official) for the 'Coding Cafe' course in the first semester of my freshman year at Plaksha University. The course was primarily directed towards the introduction of computers, shell scripting and python.
>
> Karla is a bash-based package manager that handles and runs image processing functions that are primarily built on python. For multi-fuctionality and customisation, I've given the user the ability to teach Karla their own custom fuction by tapping a git repository.

<br><br>

## Installation
<!-- GET KARLA -->
<h3 style="color: orange"> Step 1: Get Karla </h3>
Karla is still not availbale on any existing package manager like brew. But until then, you can use git to directly get the latest version of Karla from the command line.

```
sudo git clone https://github.com/trishitdedhia/karla.git /usr/local/karla
```

<!-- ADD PATH-->
<h3 style="color: orange"> Step 2: Add path</h3>
<h4 style="color: lightblue">OPTION 1 - Add it Automatically</h4>

If you already have a `.zshrc` or `.bashrc` setup, you can simply run the install.sh script using the command below to add `karla/bin` to your path.

```
/usr/local/karla/install.sh
```

<h4 style="color: lightblue">OPTION 2 - Add it Manually</h4>

You can export the path by adding the following line to `.bashrc` or `.zshrc` depending on your system and your preferences.
```
export PATH="$PATH:/usr/local/karla/bin"
```
<br>

## Usage
Karla works on a simple logic, you can learn skills by running the following:
```
karla learn <skill_name>
```

You can then execute the skill using:
```
karla <skill_name> [options]
```
<br><br>

To see a list of the skills karla knows:
```
karla show skills
```
To add unlearn a skill:
```
karla unlearn <skill_name>
```
<br><br>

For more information you can always do either one of the following:
```
karla [skill_name] --help
```
<br><br>

## What can Karla learn?
The following is a list of the official packages that Karla can learn:
<table>
<tr>
    <td><h3>Skill</h3></td>
    <td><h3>Usage</h3></td>
</tr>
<tr>
    <td>Ascii</td>
    <td>Converts images to ascii text art</td>
</tr>
<tr>
    <td>Replace</td>
    <td>Repaints specific pixels</td>
</tr>
</table>

## Make Karla Learn Custom Packages
Karla already has a set of listed packages than you can install. However if you wish to make Karla learn a specific package, you must tap a new formula.
```
karla tap <skill_name> <git_repository_link>
```

> ### Creator's Note
> Karla currently has support to run only python based packages. When performing a skill, she will execute `main.py` inside the repository and pass all arguments towards it.

<br><br>

## Uninstall Karla
All files are located inside `/usr/local/karla` by default. To install Karla you can simply remove all that folder and its contents using:
```
sudo rm -rf /usr/local/karla
```
You can also edit `~/.zshrc` or `~/.bashrc` where the command to export Karla's path is located and simply delete the line.
