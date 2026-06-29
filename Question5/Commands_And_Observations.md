# Question 5 - Commands And Observations

## 1. `lsblk`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: The `lsblk` command lists block storage devices and their partitions. It helps identify available disks and how they are organized.

## 2. `df -h`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: The `df -h` command displays mounted file systems and disk usage in human-readable format. It helps identify available and used storage space.

## 3. `df -i`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: The `df -i` command displays inode usage. It is useful because a filesystem can run out of inodes even when disk space is still available.

## 4. `mount | head -20`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: The `mount` command shows mounted filesystems and mount options. This helps understand how storage is attached and accessed by Linux.

## 5. `smartctl -H /dev/sda`

Output:

```text
Replace this with your Coursera Lab output, or state if smartctl is unavailable.
```

Observation: The `smartctl` command checks disk health when supported and installed. If it is unavailable in the lab, storage health can still be documented using `lsblk`, `df -h`, and `df -i`.

## 6. `vi Question5/Storage_Assessment_Report.txt`

Output:

```text
Screenshot should show the report opened or edited in vi.
```

Observation: The `vi` editor was used to create or edit the storage assessment report as required by the assignment. This satisfies the requirement to document findings using `vi`.

