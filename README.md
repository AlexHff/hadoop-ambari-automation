<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/alexhff/hadoop-ambari-automation">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Hadoop_logo_new.svg/2500px-Hadoop_logo_new.svg.png" alt="Logo" width="auto" height="80">
    <br />
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Apache_Ambari_Logo.svg/1280px-Apache_Ambari_Logo.svg.png" alt="Logo" width="auto" height="80">
    <br />
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Ansible_logo.svg/1200px-Ansible_logo.svg.png" alt="Logo" width="auto" height="80">
  </a>

  <h3 align="center">Hadoop via Ambari automation</h3>

  <p align="center">
    Hadoop (HDP) installation via Ambari on Vagrant VMs with Ansible to configure VMs and work on APIs.
    <br />
    <a href="https://github.com/alexhff/hadoop-ambari-automation"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/alexhff/hadoop-ambari-automation/issues">Report Bug</a>
    ·
    <a href="https://github.com/alexhff/hadoop-ambari-automation/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contributors">Contributors</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This project aims at deploying a Hadoop single node cluster using Vagrant to setup virtual machines and Ansible to configure the cluster and the different services. These Ansible playbooks will build a Hortonworks cluster (Hortonworks Data Platform and / or Hortonworks DataFlow) using Ambari Blueprints.

### Disclaimer

We decided to implement a single node cluster because our computers could not handle more complex installations (we tried). Feel free to modify the inventory and the blueprint to modify the cluster.



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

To continue with the project, you will need the following software installed on your machine :
* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [Ansible](https://www.ansible.com/)

### Installation

Clone the repo
```sh
git clone https://github.com/alexhff/hadoop-ambari-automation.git
```

Navigate to the repo
```sh
cd hadoop-ambari-automation
```

Copy the private key to your home directory (or some place convenient for you) so that it’s easily accessible for uploading via Ambari Web:
```sh
vagrant
```

The above command shows the command usage and also creates a private key as ~/.vagrant.d/insecure_private_key. This key will be used in the following steps.

Copy the private key to the local repo:
```sh
cp ~/.vagrant.d/insecure_private_key .
```

### Start VMs

Now you can start VM with the following command:
```sh
vagrant up
```

You can check the status of your VM using:
```sh
vagrant status
```
The VM should be up and running.

### Launch Ansible installation

To build the cluster using the Ansible playbooks, use the following command:
```sh
./install_cluster.sh
```



<!-- USAGE EXAMPLES -->
## Usage

### Adding nodes to the cluster

If you want to add nodes, you have to edit two files.
First, update the `Vagrantfile` to add more VMs.
Second, edit the `inventory/static` file to update the Ansible configuration.

### Manually installing Ambari

Ansible is responsible for installing Ambari. However, if you want to install Ambari manually, follow the procedures:

Log into the VM:
```sh
vagrant ssh c7401
```
Note that this logs you in as user vagrant. Once you are logged in, you can run:
```sh
sudo su -
```
to make yourself root.
Download the Ambari repository file to a directory on your installation host:
```sh
wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.7.4.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
```
Install ambari:
```sh
yum install ambari-server -y
```
Run the following to set up and start ambari-server:
```sh
ambari-server setup -s
ambari-server start
```

Once Ambari Server is started, hit http://http://192.168.74.101:8080/ (URL depends on the OS being tested) from your browser on your local computer.
Note that Ambari Server can take some time to fully come up and ready to accept connections. Keep hitting the URL until you get the login page.

Once you are at the login page, login with the default username `admin` and password `admin`.



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTRIBUTORS -->
## Contributors

* [Alexander Hoffmann](https://github.com/alexhff)
* [Adrien Bourget](https://github.com/adritoo)
* [Jean-Baptiste Mader](https://github.com/jbmader)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/alexhff/repo.svg?style=for-the-badge
[contributors-url]: https://github.com/alexhff/repo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/alexhff/repo.svg?style=for-the-badge
[forks-url]: https://github.com/alexhff/repo/network/members
[stars-shield]: https://img.shields.io/github/stars/alexhff/repo.svg?style=for-the-badge
[stars-url]: https://github.com/alexhff/repo/stargazers
[issues-shield]: https://img.shields.io/github/issues/alexhff/repo.svg?style=for-the-badge
[issues-url]: https://github.com/alexhff/repo/issues
[license-shield]: https://img.shields.io/github/license/alexhff/repo.svg?style=for-the-badge
[license-url]: https://github.com/alexhff/repo/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/alexhff
