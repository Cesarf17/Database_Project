🌱 Arlington Sprouts Database Project
📖 Overview
This project implements a database management system for Arlington Sprouts, a sprouts and microgreens retail business. The system manages inventory, customer orders, employee records, dealer relationships, and shop operations.
🏗️ Database Structure
📊 Core Tables

Item 📦

Manages product inventory
Fields: Iid (Item ID), Iname (Item Name), Sprice (Selling Price)


Customer 👥

Stores customer information
Fields: cId, Cname, Street, City, StateAb, Zipcode


Orders 🛍️

Tracks customer orders
Fields: Oid, Sid (Shop ID), Cid (Customer ID), Odate, Ddate, Amount


Employee 👨‍💼

Manages employee records
Types: Full-time (F), Temporary (T), Intern (I)
Fields: sId, SSN, Ename, Address details, Employment dates, Type-specific information


Dealer 🤝

Manages supplier information
Fields: Did, Dname, Address details



🔄 Relationship Tables

🔗 shop_customer: Links shops with customers
🏪 shop_item: Tracks item inventory per shop
📝 order_item: Details items in each order
📦 dealer_item: Links dealers with their supplied items
🤝 dealer_shop: Maps dealers to shops

⭐ Features
💻 Web Interface (PHP)

Item Management 📋

🔍 Search items by name or ID
➕ Add new items with automatic ID generation
🔄 Update item details (name and price)
🗑️ Delete items from inventory



💾 Database Features

Price History 📊

📈 Tracks price changes in oldprice table
📜 Maintains historical pricing data


Inventory Management 📦

📋 Tracks stock levels per shop
💰 Records dealer prices vs. selling prices


Order Processing 🛒

🔄 Manages order lifecycle
📅 Tracks delivery dates and amounts



🛠️ Technical Details
⚙️ Database Configuration

🖥️ Server: MariaDB 10.4.28
📝 Character Set: utf8mb4
🔤 Collation: utf8mb4_general_ci

📁 File Structure

📄 *.frm files: Table definitions
💾 *.ibd files: Table data
⚙️ db.opt: Database options

👀 Views

ItemView: Provides consolidated item statistics including:

📦 Number of boxes sold
💰 Total revenue
👥 Number of unique customers
💵 Price information



🔒 Security Features

🛡️ SQL injection prevention using mysqli_real_escape_string()
🔐 Prepared statements for sensitive queries
✅ Input validation for all form submissions

📥 Installation

💿 Import the SQL dump file to create the database structure
⚙️ Configure database connection in PHP files
🖥️ Ensure proper web server configuration (Apache/PHP)
🔑 Set appropriate file permissions

🔧 Dependencies

🐘 PHP 8.2.4 or higher
🐬 MariaDB 10.4.28 or higher
🌐 Web server (Apache recommended)

📝 Notes

🔑 Default admin credentials should be changed before deployment
💾 Regular backups recommended for transaction history
📊 Price history should be maintained for auditing purposes
