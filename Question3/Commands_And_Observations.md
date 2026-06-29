# Question 3 - Commands And Observations

## 1. `echo "This file is used to test hard links and symbolic links." > original.txt`

Output:

```text
No output means the file was created successfully.
```

Observation: This command creates a test file with sample content. The file is used as the original file for the hard link and symbolic link experiment.

## 2. `ln original.txt hardlink.txt`

Output:

```text
No output means the hard link was created successfully.
```

Observation: This command creates a hard link that points to the same inode as the original file. A hard link behaves like another filename for the same file data.

## 3. `ln -s original.txt symlink.txt`

Output:

```text
No output means the symbolic link was created successfully.
```

Observation: This command creates a symbolic link that stores a path reference to the original file. A symbolic link has its own inode and depends on the original path.

## 4. `ls -li`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: The `ls -li` command displays inode numbers. The original file and hard link should have the same inode, while the symbolic link should have a different inode.

## 5. `stat original.txt`, `stat hardlink.txt`, `stat symlink.txt`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: The `stat` command shows metadata such as inode number, link count, size, permissions, and timestamps. It provides detailed proof of how hard links and symbolic links differ.

## 6. `rm original.txt`

Output:

```text
No output means the original filename was removed successfully.
```

Observation: Removing the original file removes one directory entry. The hard link continues to work because it still points to the same inode.

## 7. `cat hardlink.txt`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: The hard link still displays the file content after the original name is removed. This shows that data remains available as long as at least one hard link exists.

## 8. `cat symlink.txt`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: The symbolic link fails after the original file is removed because it points to the original filename path. This demonstrates that symbolic links depend on the target path.

