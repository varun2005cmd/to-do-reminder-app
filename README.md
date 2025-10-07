# 🗒️ To-Do List and Reminder App  

A **Linux Shell Scripting project** that lets users manage daily tasks and reminders directly from the terminal.  
Lightweight, fast, and built entirely with Bash.

---

## 👥 Team Members  

| Name | PRN |
|------|------|
| Varun Pendem | 23070123149 |
| Tarang Pandharipandhe | 23070123140 |
| Sreejita Bhardwaj | **23070123130** |
| Mukesh Rothe | 23070123089 |
| Yaman Ansari | 23070123155 |

---

## 🚀 Overview  

This project automates task management and reminders through simple Linux commands.  
It demonstrates how Bash scripting can be used for everyday productivity tools — no GUI, just the terminal.

---

## ✨ Features  

- 📝 **To-Do List Management** – Add, view, and delete tasks  
- 🔔 **Reminders** – Add time-based reminders with `notify-send` desktop notifications  
- 💾 **Persistent Storage** – Data saved in text files (`tasks.txt`, `reminders`)  
- ⚙️ **Lightweight Automation** – Runs directly on Linux terminal  

---

## 🧰 Technologies Used  

| Component | Tool / Technology |
|------------|-------------------|
| **OS** | Ubuntu / Linux |
| **Language** | Shell Script (Bash) |
| **Version Control** | Git & GitHub |
| **Editor** | VS Code |
| **Commands Used** | `echo`, `read`, `cat`, `grep`, `sed`, `chmod`, `sleep`, `date`, `notify-send` |

---

## 📁 Project Files  

| File | Description |
|------|--------------|
| `todo.sh` | Script for managing the to-do list (add/view/delete) |
| `reminder.sh` | Script for setting and triggering reminders |
| `tasks.txt` | Stores all user tasks |
| `reminders` | Stores reminders |
| `.gitignore` | Specifies ignored files |
| `README.md` | Documentation file (this one) |

---

## 🧠 How to Run  

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/your-username/todo-reminder-app.git
cd todo-reminder-app
```

### 🧩 Step 2 — Give Execute Permissions
```bash
chmod +x todo.sh reminder.sh
```

### 🧩 Step 3— Run the To-Do List Script
```bash
./todo.sh
```
##example
==========================
    TO-DO LIST MENU
==========================
1. Add Task
2. View Tasks
3. Delete Task
4. Exit
==========================
Choose an option [1-4]: 1
Enter the task: Finish AI project report
Task added successfully!

## Viewing Tasks:

Your Tasks:
1. Finish AI project report
2. Study for ML exam


## Deleting a Task:

Select the task number to delete: 1
Task deleted successfully!

⏰ Step 4 — Run the Reminder Service
./reminder.sh


This script handles your reminders and sends notifications at the specified time.

Example:

## REMINDER MENU
1. View Reminders
2. Add Reminder
3. Start Notification Service
4. Exit


Enter your choice [1-4]: 2
Enter reminder message: Attend meeting
Enter time (HH:MM 24-hour format): 15:30
✅ Reminder added successfully!


When the reminder time matches the system time, you’ll see:

🔔 Reminder: Attend meeting


and a desktop notification will appear via notify-send.
