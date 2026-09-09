# 📖 GuestConnect — Guest Book Management System

A simple **JPA-based** guestbook application that saves the entry of any guest to a database. Built as a NetBeans Java Web Application, deployed on **GlassFish Server**, with **MySQL** as the backing database.

## 📌 Overview

GuestConnect lets a visitor submit their details through a JSP form, which are then persisted to the database via JPA — a minimal, focused example of wiring together **JSP + JPA (Entity class) + GlassFish JNDI datasource + MySQL** in a Java EE web app.

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Language | Java (JDK 8) |
| Web Layer | JSP |
| Persistence | JPA (`persistence.xml`) |
| Application Server | GlassFish Server 4.1.1 |
| Database | MySQL (via `mysql-connector-j-8.0.31`) |
| IDE / Build | NetBeans IDE (Ant-based project) |

## 📂 Project Structure

```
GuestConnect/
│
├── Web Pages/
│   ├── WEB-INF/
│   ├── index.jsp              # Entry point — guest entry form
│   └── guestInfo.jsp          # Displays stored guest details
│
├── Source Packages/
│   └── myGuest/
│       └── Guest.java         # JPA @Entity class representing a guest entry
│
├── Libraries/
│   ├── mysql-connector-j-8.0.31.jar
│   ├── JDK 1.8 (Default)
│   └── GlassFish Server 4.1.1
│
├── Test Packages/
├── Test Libraries/
│
└── Configuration Files/
    ├── MANIFEST.MF
    ├── glassfish-resources.xml   # JNDI datasource pointing to MySQL
    └── persistence.xml           # JPA persistence unit configuration
```

## ✨ Features

- Add a new guest entry via a JSP form (`index.jsp`)
- Persist guest records to MySQL using JPA
- Retrieve and display stored guest details (`guestInfo.jsp`)
- Demonstrates a GlassFish JNDI-managed datasource instead of hardcoded JDBC connections

## ✅ Prerequisites

- [JDK 8](https://www.oracle.com/java/technologies/javase/javase8-archive-downloads.html)
- [NetBeans IDE](https://netbeans.apache.org/download/index.html) (Java Web & EE support)
- [GlassFish Server 4.1.1+](https://glassfish.org/download.html)
- [MySQL Server](https://dev.mysql.com/downloads/mysql/) (running locally, or update the connection details to point elsewhere)

## 🚀 Getting Started

1. **Open the project in NetBeans**
   - `File > Open Project` → select the `GuestConnect` folder.

2. **Create the MySQL database**
   ```sql
   CREATE DATABASE guestconnect_db;
   ```
   *(Adjust the name to match whatever you configure in `glassfish-resources.xml` / `persistence.xml`. JPA can auto-create the table for the `Guest` entity depending on your persistence unit's schema-generation setting.)*

3. **Configure the datasource**
   - Open **`glassfish-resources.xml`** and update the connection URL, username, and password to match your local MySQL setup.
   - Open **`persistence.xml`** and confirm the persistence unit references the same JNDI datasource name.

4. **Register GlassFish in NetBeans** (first time only)
   - **Services** tab → right-click **Servers** → **Add Server** → select GlassFish Server → point it to your GlassFish installation.

5. **Deploy the datasource resources**
   - NetBeans automatically deploys `glassfish-resources.xml` resources when you run the project. If needed manually, you can also register the JDBC connection pool and resource via the GlassFish Admin Console (`http://localhost:4848`).

6. **Build and run**
   - Right-click the project → **Run** (or `F6`).
   - NetBeans builds the project, deploys it to GlassFish, and opens `index.jsp` in your default browser.

7. **Access the application**
   ```
   http://localhost:8080/GuestConnect/
   ```
   *(Context path may differ slightly based on your project's configured name — check the NetBeans Run settings if the page doesn't load.)*

## 🧩 Core Class

**`myGuest.Guest`** — the JPA entity mapping a guest record (e.g. name, email, message, and other fields as defined in the class) to a row in the database table.

## 🗺️ Possible Improvements

- Add a listing page showing all past guest entries
- Add input validation on the JSP form
- Add update/delete functionality for guest records
- Introduce a DAO layer to separate persistence logic from JSP scriptlets

## 📄 License

Part of the [enterprise-java-mini-projects](../README.md) repository, available under the MIT License.
