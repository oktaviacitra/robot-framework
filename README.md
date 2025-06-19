# Mobile UI Automation using Robot Framework & Appium

This project implements UI test automation for an Android mobile application using the [Robot Framework](https://robotframework.org/) with the [AppiumLibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary). The project is designed with a modular structure to separate static/dynamic data, reusable keywords, and test case definitions—making it easier to maintain and scale.

---

## 🔧 Tools & Libraries

- [Robot Framework](https://robotframework.org/)
- [Appium](https://appium.io/)
- [AppiumLibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary)
- [Python](https://www.python.org/)
- Android Emulator or Physical Device

---

## 📁 Project Structure

```plaintext
.
├── data/
│   ├── strings/        # Stores static values (e.g., text labels, messages)
│   └── values/         # Stores dynamic values (e.g., phone numbers, usernames)
│
├── resources/
│   ├── common/         # Reusable keywords (e.g., login, swipe, scroll)
│   └── locator/        # UI element locators (e.g., by ID, XPath)
│
├── test/               # Ordered test cases that can be executed
│
├── .gitignore
├── README.md
└── requirements.txt    # (Optional) Python dependency list
```
---

# 🚀 Setup & Installation
## Clone the repository
This step downloads a copy of the project repository to your local machine so you can work with the test files, run automation scripts, or make modifications.

```bash
git clone https://github.com/your-username/android-ui-automation.git
cd android-ui-automation
```

## Create and activate a Python virtual environment (recommended)
Using a virtual environment ensures that the dependencies for this project do not interfere with other Python projects on your machine.

```
# Create virtual environment
python -m venv venv

# Activate it (Linux/macOS)
source venv/bin/activate

# Activate it (Windows)
venv\Scripts\activate
```

## Install dependencies
Make sure pip is available and install all required packages from requirements.txt.
```
pip install -r requirements.txt
```

## Install and run Appium server

You need Appium to automate Android devices.

Install Appium globally using npm
```
npm install -g appium
```

Start the Appium server
```
appium
```

## Connect Android emulator or physical device
Ensure your Android emulator or real device is connected and recognized by ADB
```
adb devices
```

## ▶️ Running Tests

There are several ways to run your test cases using the `robot` command:

### 📌 Common Execution Examples

| Scenario                                   | Command Example                                                  | Description                                                                 |
|-------------------------------------------|------------------------------------------------------------------|-----------------------------------------------------------------------------|
| Run a single test file                    | `robot test/login_test.robot`                                    | Executes only the specified test file.                                     |
| Run all test files in a folder            | `robot test/feature1/`                                           | Executes all `.robot` files inside the specified folder.                   |
| Run all test files in the entire project  | `robot test/`                                                    | Executes all tests inside the `test/` directory.                           |
| Run tests with a specific tag             | `robot -i smoke test/`                                           | Runs only test cases tagged with `smoke`.                                  |
| Run tests with multiple tags (AND logic)  | `robot -i smoke -i login test/`                                  | Runs test cases with **both** `smoke` AND `login` tags.                    |
| Run tests with OR logic between tags      | `robot -i "smokeORlogin" test/`                                  | Define `smokeORlogin` tag group in `.robot` files.                         |
| Save output results to a specific folder  | `robot -d results test/`                                         | Stores the results (`log.html`, `report.html`, `output.xml`) in `results/`.|
| Include only specific test case(s)        | `robot --test "Valid Login Test" test/login_test.robot`          | Runs only a specific test case from the file.                              |
| Dry run (no actual execution)             | `robot --dryrun test/`                                           | Parses test data without executing them (syntax checking).                 |

---

### 📂 Output Files

When using the `-d <directory>` option, Robot Framework generates the following files in the specified folder:

| File Name      | Description                             |
|----------------|-----------------------------------------|
| `log.html`     | Detailed log of test execution          |
| `report.html`  | High-level report summary               |
| `output.xml`   | Raw test execution data (for re-run)    |

---

### 🏷️ Tagging Tests

To tag test cases, use the `[Tags]` setting inside your `.robot` test file:

```robot
*** Test Cases ***
Login Test With Valid Credentials
    [Tags]    smoke    login
    ...
```

Then run
```
robot -i smoke test/
```

### 🔚 Deactivating the Virtual Environment

Once you're done working inside the virtual environment, you can deactivate it to return to your system's default Python environment.

#### 💻 On All Platforms

Just type:

```bash
deactivate
```

## 🧑‍💻 Contributions

Feel free to submit issues or pull requests. If you’re adding new features, consider including appropriate tests.

---
