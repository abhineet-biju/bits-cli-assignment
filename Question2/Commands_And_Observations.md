# Question 2 - Commands And Observations

## 1. `mkdir -p project_workspace`

Output:

```text
No output means the directory was created successfully.
```

Observation: This command creates the secure project directory. The `-p` option avoids an error if the directory already exists.

## 2. `touch project_workspace/plan.txt project_workspace/notes.txt`

Output:

```text
No output means the files were created successfully.
```

Observation: The `touch` command creates empty documentation files inside the workspace. These files represent project planning and notes documents.

## 3. `ls -l project_workspace`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: This command displays the permissions, owner, group, size, and modification time of files in the workspace. It shows the default permissions before directory permission changes are evaluated.

## 4. `ls -ld project_workspace`

Output:

```text
Replace this with your Coursera Lab output before chmod.
```

Observation: This command shows the permissions and ownership of the directory itself. It is used to compare the directory permissions before and after applying `chmod`.

## 5. `chmod 750 project_workspace`

Output:

```text
No output means the permission change was successful.
```

Observation: This command gives full access to the owner, read and execute access to the group, and no access to others. It protects project files from unauthorized users.

## 6. `ls -ld project_workspace`

Output:

```text
Replace this with your Coursera Lab output after chmod.
```

Observation: The updated directory listing should show permissions similar to `drwxr-x---`. This confirms that the workspace permissions were changed successfully.

## 7. `id`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: The `id` command shows ownership identity information, including UID and group memberships. It helps explain who owns and can access the workspace.

## 8. `umask`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: The `umask` command shows the default permission mask used when new files and directories are created. It helps explain why newly created files do not receive full permissions by default.

