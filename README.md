# Student Management System ERP – Add-ons & Setup

This repository provides **Microsoft Dynamics 365 Business Central (BC)** extensions for a fully functional **Student Management System (SMS)**. It is designed to manage core academic records, user roles, and institutional workflows in higher education.

---

## 📌 Features

* **Student Table & Pages**: Manage student information such as personal details, enrollment, and program.
* **No. Series Setup**: Automatically generate unique student numbers.
* **Permission Set**: Predefined roles for Registrars, Administrators, and Academic Staff.
* **Profiles**: Customized role centers for ease of use.
* **Demo Data Installer**: Quickly set up sample student records for testing.
* **CI/CD Ready**: Includes GitHub workflow placeholder for automated build and testing.

---

## 📂 Repository Structure

```
├── src
│   ├── Student.Table.al          # Student master table
│   ├── Student.Page.al           # Card & list pages
│   ├── Setup.Table.al            # No. Series setup
│   ├── Setup.Page.al             # Setup page
│   ├── PermissionSet.al          # Role & permission set definition
│   ├── Profile.al                # Profile setup for registrar/admin
│   ├── Install.Codeunit.al       # Installer for setup + demo data
│   └── Test.Codeunit.al          # Placeholder for AL test cases
│
├── .github
│   └── workflows
│       └── ci.yml                # CI/CD pipeline (to be extended)
│
├── README.md                     # Documentation
└── LICENSE                       # MIT License
```

---

## 🚀 Installation & Setup

1. Clone this repo:

   ```bash
   git clone https://github.com/your-org/student-management-system-bc.git
   ```

2. Open in **Visual Studio Code** with the **AL Language extension** installed.

3. Update `app.json` with your publisher, version, and ID range.

4. Press `F5` or use **AL: Publish and Install without Debugging** to deploy.

5. After deployment:

   * Go to **Student Management Setup** to configure number series.
   * Review **Permission Sets** to assign appropriate roles.
   * Import or create students via the **Student List**.

---

## 🎓 Usage Guide

* **Registrar** → Can create/update student records.
* **Academic Staff** → Can view student information.
* **Admin** → Full access, setup, and role assignment.

---

## 🧪 Testing

* Placeholder **Test Codeunits** are provided (`Test.Codeunit.al`).
* Extend with functional test cases for workflows like:

  * Student creation with auto-numbering.
  * Role-based access validation.
  * Data consistency checks.

---

## 🛠️ CI/CD (Optional)

* `.github/workflows/ci.yml` is included as a **GitHub Actions** placeholder.
* Extend to run:

  * **AL Compiler checks**
  * **Automated tests**
  * **Packaging for AppSource**

---

## 📜 License

This project is licensed under the **MIT License** – see [LICENSE](LICENSE) for details.

---

## 🤝 Contribution

1. Fork the repo & create a new branch.
2. Add new features or fix bugs.
3. Commit and push changes.
4. Submit a **Pull Request**.

---

## 📧 Support

For questions, suggestions, or issues:

* Open a GitHub issue, or
* Contact the maintainers via email.

---

✅ With this extension, institutions can digitize and simplify **student records management** within Business Central, ensuring better control, role-based access, and streamlined academic processes.
