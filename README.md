<div align="center">

# 🚀 TaskNest
### Modern Flutter Task Manager App

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.x-blue?style=for-the-badge&logo=flutter" />
  <img src="https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart" />
  <img src="https://img.shields.io/badge/Supabase-Backend-3ECF8E?style=for-the-badge&logo=supabase" />
  <img src="https://img.shields.io/badge/Platform-Android-success?style=for-the-badge&logo=android" />
  <img src="https://img.shields.io/github/license/haseeb-28/task_manager?style=for-the-badge" />
  <img src="https://img.shields.io/github/stars/haseeb-28/task_manager?style=for-the-badge" />
</p>

<p align="center">
  A clean, modern, and feature-rich Task Manager application built with Flutter and Supabase.  
  Designed with smooth UI, real-time task management, authentication, and REST API integration.
</p>

</div>

---

# ✨ Features

## 🔐 Authentication
- Secure user Sign Up & Login
- Persistent authentication sessions
- Logout functionality
- Form validation & error handling

## 📋 Task Management
- Create new tasks
- Edit existing tasks
- Delete tasks
- Mark tasks as completed
- Real-time updates

## 📊 Task Insights
- Task statistics overview
- Completed / Pending counters
- Filter tasks by status:
  - All
  - Pending
  - In Progress
  - Completed

## 🌐 API Integration
- Fetches motivational quotes using REST API
- Fallback handling for API failures

## 🎨 Modern UI
- Material 3 Design
- Responsive layouts
- Smooth animations
- Beautiful typography
- Clean card-based interface

---

# 📸 App Preview

<div align="center">

<img src="add_new_task.png" width="260"/> &nbsp;&nbsp;&nbsp;
<img src="my_tasks.png" width="260"/>

</div>

---

# 🛠 Tech Stack

| Technology | Usage |
|------------|------|
| Flutter | Frontend Framework |
| Dart | Programming Language |
| Supabase | Backend & Authentication |
| REST API | Quotes API |
| Material 3 | UI Design |
| HTTP Package | API Calls |

---

# 📂 Project Structure

```bash
lib/
├── models/
│   ├── quote_model.dart
│   └── task_model.dart
│
├── screens/
│   ├── add_edit_task_screen.dart
│   ├── home_screen.dart
│   ├── login_screen.dart
│   ├── signup_screen.dart
│   └── splash_screen.dart
│
├── services/
│   ├── auth_service.dart
│   ├── quote_service.dart
│   └── task_service.dart
│
├── widgets/
│   ├── quote_card.dart
│   ├── stats_card.dart
│   └── task_card.dart
│
├── supabase_options.dart
└── main.dart
```

---

# ⚙️ Installation & Setup

## 1️⃣ Clone Repository

```bash
https://github.com/haseeb-28/Tasknest-A-Modern-Flutter-Task-Manager-App.git
cd task_manager
```

---

## 2️⃣ Install Dependencies

```bash
flutter pub get
```

---

# 🟢 Supabase Setup

## Step 1 — Create Supabase Project

1. Go to:
   https://supabase.com

2. Create a new project

3. Wait for database setup to complete

---

## Step 2 — Get Supabase Credentials

Go to:

```bash
Project Settings → API
```

Copy:
- Project URL
- Anon Public Key

---

## Step 3 — Add Credentials

Create a file:

```bash
lib/supabase_options.dart
```

Example:

```dart
const supabaseUrl = 'YOUR_SUPABASE_URL';
const supabaseAnonKey = 'YOUR_SUPABASE_ANON_KEY';
```

---

## Step 4 — Initialize Supabase

Inside `main.dart`:

```dart
await Supabase.initialize(
  url: supabaseUrl,
  anonKey: supabaseAnonKey,
);
```

---

# 🗄 Database Schema

## Tasks Table

| Column | Type |
|-------|------|
| id | uuid |
| title | text |
| description | text |
| status | text |
| created_at | timestamp |
| user_id | uuid |

---

# 🔐 Supabase Authentication

Enable Email Authentication:

```bash
Authentication → Providers → Email
```

Enable:
- Email/Password Sign In

---

# ▶️ Run the App

```bash
flutter run
```

---

# 📦 Build Release APK

```bash
flutter build apk --release
```

APK Location:

```bash
build/app/outputs/flutter-apk/app-release.apk
```

---

# 📱 Split APK by ABI

```bash
flutter build apk --release --split-per-abi
```

Generated APKs:

```bash
app-armeabi-v7a-release.apk
app-arm64-v8a-release.apk
app-x86_64-release.apk
```

---

# 📚 Dependencies

| Package | Purpose |
|---------|---------|
| supabase_flutter | Backend & Authentication |
| http | REST API Calls |
| intl | Date Formatting |
| google_fonts | Modern Typography |
| uuid | Unique Task IDs |

---

# ✅ Assignment Criteria Coverage

| Criteria | Status |
|----------|--------|
| Flutter UI & Navigation | ✅ |
| Authentication System | ✅ |
| CRUD Operations | ✅ |
| REST API Integration | ✅ |
| Code Structure | ✅ |
| Error Handling | ✅ |
| Responsive UI | ✅ |

---

# 🚀 Future Improvements

- Dark Mode
- Push Notifications
- Task Reminders
- Offline Support
- Task Categories
- Drag & Drop Task Sorting

---

# 🤝 Contributing

Contributions are welcome.

1. Fork the repository
2. Create a new branch
3. Commit your changes
4. Push to your branch
5. Open a Pull Request

---

# 📄 License

This project is licensed under the MIT License.

---

<div align="center">

# 👨‍💻 Author

### Haseeb Ur Rehman

BSIT Graduate — Bahria University Islamabad

<p align="center">
  <a href="https://github.com/haseeb-28">
    <img src="https://img.shields.io/badge/GitHub-haseeb--28-black?style=for-the-badge&logo=github" />
  </a>
</p>


</div>
