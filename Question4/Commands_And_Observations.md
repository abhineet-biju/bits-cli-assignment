# Question 4 - Commands And Observations

## 1. `lsof -p $$`

Output:

```text
Replace this with your Coursera Lab output, or state if lsof is unavailable.
```

Observation: The `lsof` command lists open files for the current shell process. It helps identify files, terminals, libraries, and other resources currently opened by the process.

## 2. `ls -l /proc/$$/fd`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: This command lists file descriptors for the current shell process. File descriptors such as `0`, `1`, and `2` usually represent standard input, standard output, and standard error.

## 3. `echo "Application log entry created successfully" > Question4/output.txt`

Output:

```text
No terminal output because stdout was redirected to output.txt.
```

Observation: The `>` operator redirects standard output into a file. This demonstrates how application output can be written to a log file.

## 4. `cat Question4/output.txt`

Output:

```text
Application log entry created successfully
```

Observation: The `cat` command confirms that the redirected output was saved in the file. This verifies successful output redirection.

## 5. `ls missing_file.txt 2> Question4/error.txt`

Output:

```text
No terminal error shown because stderr was redirected to error.txt.
```

Observation: The `2>` operator redirects standard error into a file. This separates error messages from normal command output.

## 6. `cat Question4/error.txt`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: This command displays the saved error message. It proves that standard error was redirected into `error.txt`.

## 7. `ulimit -a`

Output:

```text
Replace this with your Coursera Lab output.
```

Observation: The `ulimit -a` command displays resource limits for the shell, such as open files and process limits. These limits help the operating system control resource usage.

