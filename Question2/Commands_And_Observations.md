# Question 2 - Commands, Outputs, and Observations

## Command 1

```bash
mkdir -p project_workspace
```

Output:

```text
No output
```

Observation: This command created the project workspace directory. There was no error, so the directory was created successfully.

## Command 2

```bash
touch project_workspace/plan.txt project_workspace/notes.txt
```

Output:

```text
No output
```

Observation: This command created two empty project files. These files were used as sample documentation files in the secure workspace.

## Command 3

```bash
ls -l project_workspace
```

Output:

```text
total 0
-rw-r--r-- 1 root root 0 Jun 22 21:32 notes.txt
-rw-r--r-- 1 root root 0 Jun 22 21:32 plan.txt
```

Observation: This command displayed the files inside the workspace. The output shows plan.txt and notes.txt with their default file permissions.

## Command 4

```bash
ls -ld project_workspace
```

Output:

```text
drwxr-xr-x 2 root root 4096 Jun 22 21:32 project_workspace
```

Observation: This command displayed the directory permissions before modification. The original permissions allowed access for owner, group, and others.

## Command 5

```bash
chmod 750 project_workspace
```

Output:

```text
No output
```

Observation: This command changed the workspace permission to 750. This gives full access to the owner, limited access to the group, and no access to others.

## Command 6

```bash
ls -ld project_workspace
```

Output:

```text
drwxr-x--- 2 root root 4096 Jun 22 21:32 project_workspace
```

Observation: This command confirmed the changed permission. The output shows drwxr-x---, which means others cannot access the directory.

## Command 7

```bash
id
```

Output:

```text
uid=0(root) gid=0(root) groups=0(root)
```

Observation: This command displayed ownership identity information. The output shows the UID, GID, and group details of the user.

## Command 8

```bash
umask
```

Output:

```text
0022
```

Observation: This command displayed the default permission mask. The output 0022 explains why new files are not created with write permission for group and others.

## Command 9

```bash
find project_workspace -maxdepth 2 -ls
```

Output:

```text
3966710      4 drwxr-x---   2 root     root         4096 Jun 22 21:32 project_workspace
  3966738      0 -rw-r--r--   1 root     root            0 Jun 22 21:32 project_workspace/notes.txt
  3966737      0 -rw-r--r--   1 root     root            0 Jun 22 21:32 project_workspace/plan.txt
```

Observation: This command displayed the workspace structure with permissions and ownership. It confirmed the created directory and files.
