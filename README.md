# Enterprise Java Mini Projects

A growing collection of small, self-contained **Enterprise Java web applications**, each built to practice or demonstrate a specific set of Java EE / Jakarta EE concepts — **Servlets, JSP, HTML, JPA, Hibernate, and persistence**. Every project lives in its own folder, is fully independent, and comes with its own setup instructions.

## 📌 About

This repository is a learning and reference workspace for enterprise Java web development. Each mini project explores a real, working use case — a book catalog, a student/employee tracker, a feedback form, and so on — while covering different pieces of the enterprise Java stack, such as:

- Servlets & request/response handling
- JSP & JSTL for the view layer
- HTML/CSS for basic front-end pages
- JPA entities & persistence configuration
- Hibernate as an ORM/persistence provider
- Session handling, filters, and other web-tier concerns

Since each project is independent, the exact tech stack, build tool, and server can vary from one mini project to another. **Check each project's own `README.md`** for its precise setup, dependencies, and how to run it.

## 📂 Repository Structure

```
enterprise-java-mini-projects/
│
├── README.md                 # This file — repo-wide overview
│
├── 01-BookVault/              # Book Management System (JPA + JSP)
│   └── README.md              # Project-specific setup & details
│
├── 02-GuestConnect/            # Guest Book Management System (JPA + JSP)
│   └── README.md
│
└── ...
```

Each project folder is self-contained — its own source, web pages, configuration files, and a dedicated `README.md` explaining exactly what it does and how to run it. New mini projects are added as new `0N-Project-Name/` folders as they're built.

## 🛠️ Technologies Covered Across This Repo

| Category | Technologies |
|---|---|
| Language | Java (JDK 8+, varies per project) |
| Web Layer | Servlets, JSP, JSTL, HTML, CSS |
| Persistence | JPA, Hibernate, `persistence.xml` |
| Servers | GlassFish and/or Apache Tomcat (varies per project) |
| Build / IDE | Maven, or NetBeans (Ant-based) — varies per project |
| Database | MySQL (or others, depending on the project) |

> Not every project uses every technology above — think of this as the combined toolbox the repo draws from, not a fixed stack every project follows.

## ✅ General Prerequisites

While exact requirements differ per project, you'll generally need:

- A JDK (version noted in the project's own README)
- An IDE — NetBeans, Eclipse, or IntelliJ IDEA, depending on the project's build setup
- An application server — GlassFish or Apache Tomcat (as specified per project)
- A database — typically MySQL, unless stated otherwise

## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/<your-username>/enterprise-java-mini-projects.git
   cd enterprise-java-mini-projects
   ```

2. **Pick a project**
   ```bash
   cd 01-BookVault
   ```

3. **Follow that project's own README**
   Each mini project's `README.md` contains its exact tech stack, database setup, and steps to build/deploy/run it — since these can differ from project to project.

## 📚 Projects Overview

| # | Project | Description | Key Concepts |
|---|---|---|---|
| 01 | [BookVault](./01-BookVault) | Book Management System — a simple JPA application to store and retrieve book details | JSP, JPA, GlassFish, MySQL |
| 02 | [GuestConnect](./02-GuestConnect) | Guest Book Management System — a JPA application to save and view guest entries | JSP, JPA, GlassFish, MySQL |

*(This table grows as new mini projects are committed.)*

## 🤝 Contributing

Contributions are welcome! If you'd like to add a new mini project or improve an existing one:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/new-project-name`)
3. Add your project as a new `0N-Project-Name/` folder, with its own `README.md`
4. Commit your changes
5. Push to the branch and open a Pull Request

Please keep each project self-contained, with its own README describing setup steps and the concepts it covers.

## 📄 License

This repository is open source and available under the [MIT License](LICENSE).

## 🙋 Author

Maintained by [Your Name]. Feel free to reach out with questions or suggestions!


## 🙋 Author

Maintained by [Your Name]. Feel free to reach out with questions or suggestions!
