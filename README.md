# 🚀 Chef Nginx Reverse Proxy for React App with DynamoDB

This project automates the setup of an **NGINX reverse proxy** for a **React app** with a **DynamoDB backend** using **Chef**. 🛠️  
It provisions an Nginx server, deploys a React app, and configures proxy settings—all with **infrastructure as code**.

## 📁 Project Structure

```
chef-nginx-react/
│── cookbooks/
│   ├── nginx_reverse_proxy/
│   │   ├── recipes/
│   │   │   ├── default.rb          # Installs & configures Nginx
│   │   │   ├── proxy.rb            # Sets up reverse proxy
│   │   │   ├── react_app.rb        # Deploys React app
│   │   │   ├── dynamodb.rb         # Configures DynamoDB connection
│   │   ├── templates/
│   │   │   ├── default/
│   │   │   │   ├── nginx.conf.erb  # Nginx configuration template
│   │   ├── attributes/
│   │   │   ├── default.rb          # Customizable variables
│   │   ├── metadata.rb             # Cookbook metadata
│   │   ├── Berksfile               # Dependency management
│
│── roles/
│   ├── web_server.rb               # Role for Nginx server
│
│── environments/
│   ├── production.json              # Production settings
│   ├── staging.json                 # Staging settings
│
│── data_bags/                       # Secure storage (optional)
│
│── .chef/                            # Chef workstation config
│   ├── knife.rb                      # Knife configuration
│
│── Vagrantfile                       # Local testing with Vagrant
│── README.md                         # Documentation
│── chef-repo.rb                      # Main Chef config
```

## 🔧 Prerequisites

Ensure you have the following installed:

- [Chef Workstation](https://downloads.chef.io/) 🍴
- [Vagrant](https://www.vagrantup.com/) 📦
- [VirtualBox](https://www.virtualbox.org/) 🖥️
- AWS credentials for DynamoDB access (if using a real backend)

## 🏗️ Setup & Deployment

### 1️⃣ Clone the Repository
```sh
git clone https://github.com/your-repo/chef-nginx-react.git
cd chef-nginx-react
```

### 2️⃣ Start the Virtual Machine
```sh
vagrant up
```

### 3️⃣ Verify Nginx & React Deployment
Once provisioning completes, open your browser and visit:
```
http://localhost:8080
```
If successful, you should see the React app served through Nginx.

## 🔥 Features
- ✅ Automates Nginx setup via **Chef**
- ✅ Configures **Reverse Proxy** for a React app
- ✅ Deploys and syncs the **React Example App**
- ✅ Supports **DynamoDB** backend connectivity
- ✅ Test locally using **Vagrant**

## 🛠️ Future Enhancements
- 🔹 SSL support with Let's Encrypt 🔒
- 🔹 Automatic scaling with AWS Auto Scaling ⚙️
- 🔹 Containerization with Docker 🐳

## 🤝 Contributing
Feel free to submit **issues**, **PRs**, and suggestions! 🎉

## 📜 License
GNU Public License V 2.0