# 🗒️ To-Do List & Reminder Suite  

A **Linux Shell Scripting Project** that combines productivity tools like **to-do lists**, **reminders**, **focus timers**, and **system cleanup automation** — all running directly in the terminal.  
Lightweight, efficient, and built entirely with Bash.  

---

## 👥 Team Members  

| Name | PRN |
|------|------|
| Varun Pendem | 23070123149 |
| Tarang Pandharipandhe | 23070123140 |
| Sreejita Bhardwaj | 23070123130 |
| Mukesh Rothe | 23070123089 |
| Yaman Ansari | 23070123155 |

---

## 🚀 Overview  

This project demonstrates how **Bash scripting** can be used to build powerful, minimal productivity tools — no GUI, no heavy dependencies, just shell magic.  
It includes scripts for managing tasks, reminders, focus sessions, and system cleanup.

---

## ✨ Features  

### ✅ To-Do List (`todo.sh`)
- Add, view, and delete daily tasks  
- Automatically numbers and stores tasks in `tasks.txt`  
- Simple CLI interface for efficient management  

### 🔔 Reminder System (`reminder.sh`)
- Add time-based reminders  
- Sends desktop notifications via `notify-send`  
- Auto-checks reminders every 30 seconds  

### 🧘 Focus Mode (`focus.sh`)
- Timer-based productivity session  
- Logs completed sessions in `focus_sessions.log`  
- Sends a notification when time is up  

### 🧹 System Cleanup (`clean_temp.sh`)
- Deletes temp, cache, and log files older than 7 days  
- Targets `/tmp`, `$HOME/.cache`, `/var/tmp`, and `./logs`  
- Runs silently and safely  

### 🕒 Due Soon (`dueSoon.sh`)
- Lists tasks due within the next 24 hours (uses JSON task data)  

### 📊 Task Stats (`taskStats.sh`)
- Displays total, completed, and pending task count  
- Shows a visual progress bar and category breakdown  

---

## 🧰 Technologies Used  

| Component | Tool / Technology |
|------------|-------------------|
| **OS** | Ubuntu / Linux |
| **Language** | Bash Shell Script |
| **Version Control** | Git & GitHub |
| **Editor** | VS Code |
| **Commands Used** | `echo`, `read`, `cat`, `grep`, `sed`, `jq`, `date`, `notify-send`, `find`, `chmod`, `sleep` |

---

## 📁 Project Structure  

📦 todo-reminder-suite/
├── README.md
├── tasks.txt
├── reminders
├── focus_sessions.log
├── scripts/
│ ├── todo.sh
│ ├── reminder.sh
│ ├── focus.sh
│ ├── clean_temp.sh
│ ├── dueSoon.sh
│ ├── taskStats.sh
│ └── checkPending.sh
└── .gitignore





---

## ⚙️ Setup & Execution  

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/your-username/todo-reminder-suite.git
cd todo-reminder-suite
```

### 2️⃣ Make Scripts Executable
```bash
chmod +x scripts/*.sh
```

### 3️⃣ Run a Script

To open the To-Do list:
```
./scripts/todo.sh
```

To start reminders:
```
./scripts/reminder.sh
```

To clean old temp files:
```
./scripts/clean_temp.sh
```

To enter focus mode:
```
./scripts/focus.sh
```

# 💡 Example (To-Do List)

Menu Example:
TO-DO LIST: 
1. Add Task
2. View Tasks
3. Delete Task
4. Exit

Choose an option [1-4]:


Add Task

Enter the task: Finish AI project report
✅ Task added successfully!


View Tasks

📝 Your Tasks:
1. Finish AI project report
2. Study for ML exam


Delete Task

Task number: 1
✅ Task deleted successfully!

🔔 Reminder Example
REMINDER MENU
1. View Reminders
2. Add Reminder
3. Start Notification Service
4. Exit

Enter your choice [1-4]:


Add Reminder

Enter reminder message: Attend meeting
Enter time (HH:MM 24-hour format): 15:30
✅ Reminder added successfully!


Notification Output

🔔 Reminder: Attend meeting

📊 Statistics Example (taskStats.sh)

📊 To-Do List Statistics
---------------------------------
Total Tasks   : 10
Completed     : 6
Pending       : 4
Progress      : [██████████        ] 60%
---------------------------------
# 📂 Category Summary:
  - work: 5 tasks
  - personal: 5 tasks

# 🧩 Maintenance Tools
Script	Purpose
clean_temp.sh	Deletes old cache and logs
dueSoon.sh	Checks for upcoming deadlines
focus.sh	Timer-based focus sessions
checkPending.sh	Displays remaining unfinished tasks
# 🧠 Future Enhancements

 Add color-coded terminal UI

 Integrate with cron for auto-reminders

 Support recurring reminders

 Add JSON export/import for tasks

 # 🧾 License

This project is open-source and available under the MIT License
