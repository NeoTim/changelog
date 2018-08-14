# Changelog

![build](https://img.shields.io/teamcity/http/ci.l0nax.org/s/Changelog_Build.svg?style=flat-square)

This is a "Sub-Module" of the **Release & Developer Toolkit**.

Click [here](https://intern.l0nax.org/jira/projects/REDEVCHAN/issues) to go to our Issue Tracker.


## License

This Project is Licensed under the [MIT License](LICENSE).
You find the License in the [LICENSE](LICENSE) File.

## Download

**Coming Soon**

## Build

**It is recommended to download the Binarys!!**

1. You must install [Conan](https://conan.io)
2. Add the Bincrafters Conan Repository
```bash
~$ conan remote add bincrafters_public https://api.bintray.com/conan/bincrafters/public-conan 
``` 
3. Compile
```bash
~$ mkdir _build && cd _build
~$ conan install .. --build=missing
~$ cmake ..
```

## Usage

### Init

Initialize the Directory for the Changelog Tool.

Example Output:

```bash
~$ changelog init
[+] Creating Directory's:                                                                                          [done]
    .changelogs                                                                                                    [done]
    .changelogs/unreleased                                                                                         [done]
    .changelogs/released                                                                                           [done]
[i] Check if File 'CHANGELOG.md' Exists
[+] 'CHANGELOG.md' Exists -- Do not create File

[i] Check if Directory '.dev' Exists...
[-] '.dev' Directory does not Exists -- Creating Directory                                                         [done]
[+] Creating Default Configuration in '.dev'                                                                       [done]
```

### New Changelog Entry

Create a new Changelog Entry.

```bash
~$ changelog new "Add new Super Nice Feature"
Please Enter Entry Type:
[1] New Feature (Added)
[2] Bug Fix (Fixed)
[3] Feature change (Changed)
[4] New deprecation (Deprecated)
[5] Feature removal (Removed)
[6] Security fix (Security)
>>> 1

[i] Creating File '.changelogs/unreleased/SUPERPRJ-152-add-super-nice-feature'                                     [done]
```

### Create new Release

Help:
```bash
changelog release <Version> [OPTIONS]

   Options:
       -p|--pre-release
           The Release is a Pre-Release Version.
           It will not delete the Entry Files (only move them).

           - Default: NO

       -d|--delete-pre
           Only works if Release is NOT a Pre-Release!
           Will delete all Pre-Release Notices from the Changelog File

           - Default: NO
```

Example: 
```bash
~$ changelog release "1.2.0"
[i] Regenerating 'CHANGELOG.md'                                                                                    [done]
```

### List all Entrys

Help:
```
changelog list [OPTIONS]

   Options:
       -s|--search <ENTRY_TYPE NAME>
           Will Search for Entry Type's with this Name.
```


### Delete Entry

Help:
```
changelog rm <OPTION>

   Options:
       -id <ENTRY_ID>
           Delete a Entry with the Entry ID.

       -n <ENTRY TITLE NAME>
           Delete a Entry with this Title.
```
