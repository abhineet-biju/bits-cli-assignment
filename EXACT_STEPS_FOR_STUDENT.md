# Exact Steps You Must Do From Your Side

You must do these steps inside the Coursera Linux Lab because the grader expects real Linux Lab outputs and screenshots.

## Step 1: Open Coursera Lab

1. Open the graded lab assignment.
2. Launch the Coursera Linux Lab.
3. Open Terminal Emulator.

## Step 2: Put This Repository In The Lab

Use one of these methods:

Option A: Upload this whole folder into the Coursera Lab file manager.

Option B: If this repository is already on GitHub, clone it in Coursera Lab:

```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPOSITORY_NAME.git
cd YOUR_REPOSITORY_NAME
```

## Step 3: Run The Commands For Each Question

From the repository root, run:

```bash
bash scripts/run_question1.sh
bash scripts/run_question2.sh
bash scripts/run_question3.sh
bash scripts/run_question4.sh
bash scripts/run_question5.sh
```

These scripts create output files named:

```text
Question1/coursera_command_output.txt
Question2/coursera_command_output.txt
Question3/coursera_command_output.txt
Question4/coursera_command_output.txt
Question5/coursera_command_output.txt
```

## Step 4: Replace Placeholder Outputs

Open each `Commands_And_Observations.md` file and replace placeholder output blocks with real output from the matching `coursera_command_output.txt` file.

Files to edit:

```text
Question1/Commands_And_Observations.md
Question2/Commands_And_Observations.md
Question3/Commands_And_Observations.md
Question4/Commands_And_Observations.md
Question5/Commands_And_Observations.md
```

You can edit using `vi`, `nano`, or the lab text editor. For Question 5, use `vi` at least once because the assignment explicitly asks for it.

## Step 5: Complete The Report Files

Fill in these files using your real Coursera Lab output:

```text
Question1/Environment_Report.txt
Question2/Project_Workspace_Report.txt
Question3/Link_Analysis_Report.txt
Question4/IO_Investigation_Report.txt
Question5/Storage_Assessment_Report.txt
```

For Question 5, run:

```bash
vi Question5/Storage_Assessment_Report.txt
```

Inside `vi`:

1. Press `i` to enter insert mode.
2. Edit the report content.
3. Press `Esc`.
4. Type `:wq`.
5. Press `Enter`.

Take a screenshot showing the report open in `vi`.

## Step 6: Take Screenshots

Take screenshots of the terminal outputs and save them in the correct folders:

```text
Question1/Screenshots/
Question2/Screenshots/
Question3/Screenshots/
Question4/Screenshots/
Question5/Screenshots/
```

Recommended screenshot names:

```text
Question1/Screenshots/q1_user_shell_pwd.png
Question1/Screenshots/q1_ls_ping.png

Question2/Screenshots/q2_create_workspace.png
Question2/Screenshots/q2_permissions_umask.png

Question3/Screenshots/q3_links_inode_stat.png
Question3/Screenshots/q3_delete_original_behavior.png

Question4/Screenshots/q4_open_files_fd.png
Question4/Screenshots/q4_redirection_ulimit.png

Question5/Screenshots/q5_storage_commands.png
Question5/Screenshots/q5_vi_report.png
```

## Step 7: Check Everything Before Upload

Run:

```bash
find . -maxdepth 3 -type f | sort
```

Confirm that every question folder has:

- Commands and observations file
- Required report file
- Screenshot folder with screenshots
- Real command output file

## Step 8: Push To A Public GitHub Repository

If this folder is not already connected to GitHub, create a public GitHub repository first. Then run these commands from the repository root:

```bash
git init
git add .
git commit -m "Complete graded Linux lab assignment"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPOSITORY_NAME.git
git push -u origin main
```

If the GitHub remote already exists, use:

```bash
git add .
git commit -m "Complete graded Linux lab assignment"
git push
```

## Step 9: Submit In Coursera

Submit the public GitHub repository URL, for example:

```text
https://github.com/YOUR_USERNAME/YOUR_REPOSITORY_NAME
```

Also enter your legal name exactly as it appears on your government-issued ID.

## Final Warning

Do not submit before adding real Coursera Lab outputs and screenshots. The current templates are organized for you, but placeholders must be replaced with your actual lab results.

