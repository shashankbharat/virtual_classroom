# virtual_classroom
**_<ins>Overview</ins>_:** Computer Networks project in Java

*Please Note* - This is a project developed in 2010 that I found in my old (and now unused) laptop. It needs more work to run on latest version of JAVA in Eclipse (see TODO list below).

### TODO:
* Update code to run with current [JAVA](https://www.oracle.com/java/technologies/downloads/) in [Eclipse](https://www.eclipse.org/downloads/)

### Introduction:

On wireless computer networks, ad-hoc mode is a method for wireless devices to directly communicate with each other. Operating in ad-hoc mode allows all wireless devices within range of each other to discover and communicate in peer-to-peer fashion without involving central access points. The network is ad-hoc because it does not rely on pre-existing infrastructure, such as routers in wired networks or access points in managed (infrastructure) wireless networks. Instead, each node participates in routing by forwarding data for other nodes, and so the determination of which nodes forward data is made dynamically based on the network connectivity.

The Optimized Link State Routing Protocol (OLSR) is an IP routing protocol optimized for mobile ad-hoc networks. It operates as a table driven, proactive protocol, i.e., exchanges topology information with other nodes of the network regularly. Each node selects a set of its neighbor nodes as "multipoint relays" (MPR). In OLSR, only nodes, selected as such MPRs are responsible for forwarding control traffic, intended for diffusion into the entire network. In this project, the OLSR protocol is implemented via an interface. This interface, when successfully executed, creates an on demand ad-hoc network between the teacher and student nodes.

This project is concerned with successfully administering an e-class session from sharing notes, conducting quizzes and getting feedback from the students. The application is to be run over an ad-hoc network comprising of a computer used by the instructor, and other computers used by students. The software is being developed using Eclipse platform, JAVA and Java Server Pages (JSP). Apache Tomcat is used to run the server and Apache Derby database server is used to manage all database related transactions.

### Device Profile

D-Link AirPlus G DWL-G510 PCI Adapter is a wireless PCI adapter used to deliver data transfer in the 2.4GHz frequency. This device is to be installed in desktops. Laptops on the other hand, come with a pre-configured wireless adapter.

![D-Link PCI Adapter](images/1_PCI_Adapter.JPG "D-Link AirPlus G DWL-G510 PCI Adapter")

### Network Setup

For the sake of simplicity, let us set up a wireless ad-hoc connection between two computers. Let the two computers be named **EMB-01** and **EMB-03**.

Configuring the devices

**ON “EMB-01”**

1. Right-click “My Computer”, click “Properties”
2. Click on the tab “Computer Name”
3. Click “Change”
4. Specify a name for the computer. (In this case case, we call it EMB-01)
5. Click “Workgroup” and specify a name. (Let the workgroup CSE)
6. Click OK

*<ins>Configuring the wireless adaptor</ins>*
1. Go to Start > Control Panel > Network Connections.      
2. Right-click on your wireless adaptor, click “Properties”, click “Configure”.
3. Make sure are the options available in the configurations are set according to      satisfy the following conditions:
- The type of connection is set to “Adhoc” and not   “Infrastructure”
- The security settings are off (It may be called “B/G Protection”, nevertheless, set  this to “none” or “off”).
- On some occasions, you may come across something that says “SSID” with a textbox corresponding to it. In this entry, you can specify a name for your network. Let’s just call it “Default” for now.
4. After altering the configuration settings, click “OK”.
5. Right-click again on your wireless adaptor, click “Properties”.
6. Click the tab “Wireless Network”.
7. Click “Add”.
8. In the new window, type in the same SSID key that you may have specified in step 3. Let’s call it “Default”. Under “Network Authentication”, select the option “Open” in the dropdown menu. Having done that, select “Disabled” under “Data encryption”. Lastly, place a tick for the option “This is a computer-to-computer (ad hoc) network, wireless access points are not used”. Click “OK” to save.
9. Click “OK” to exit the wireless adaptor window 

*<ins>Configuring IP</ins>*

1. Go to Start > Control Panel > Network Connections > Network Connections.
2. Right-click on your wireless adaptor and click “Properties”.
3. Under the heading “This connection uses the following items”, click “Internet Protocol (TCP/IP).
4. Click “Properties”.
5. A new window should pop up, click “Alternate Configuration”.
6. Click “User configured” radio button.
7. Here, you can specify the address. For computer EMB-01, specify the IP as 192.168.0.2, subnet mask as 255.255.255.0, Default gateway as 192.168.0.1. Under “Preferred DNS Server”, enter the value “208.67.222.222″. As for “Alternate DNS Server”, enter the value “208.67.220.220″. These values are sourced from OpenDNS, which will enable the computer to understand the numerical address details of a website.
8. Click “OK”

**ON “EMB-03”**

1. Right-click “My Computer”, click “Properties”.
2. Click on the tab “Computer Name”.
3. Click “Change”.
4. Specify a name for the computer. (In this case case, we call it EMB-03).
5. Click “Workgroup” and specify a name. (Let the workgroup CSE).
6. Click OK

*<ins>Configuring the wireless adaptor</ins>*

1. Go to Start > Control Panel > Network Connections. Right-click on your wireless adaptor, click “Properties”.
2. Click “Configure”.
3. Make sure are the options available in the configurations are set according to satisfy the following conditions:
* The type of connection is set to “Adhoc” and not “Infrastructure”.
* The security settings are off (It may be called “B/G Protection”, nevertheless, set this to “none” or “off”).
* On some occasions, you may come across something that says “SSID” with a textbox corresponding to it. In this entry, you can specify a name for your network. Let’s just call it “Default” for now.
4. After altering the configuration settings, click “OK”.
5. Right-click again on your wireless adaptor, click “Properties”.
6. Click the tab “Wireless Network” .
7. Click “Add”.
8. In the new window, type in the same SSID key that you may have specified in step 3. Let’s call it “Default”. Under “Network Authentication”, select the option “Open” in the dropdown menu. Having done that, select “Disabled” under “Data encryption”. Lastly, place a tick for the option “This is a computer-to-computer (ad hoc) network, wireless access points are not used”. Click “OK” to save.
9. Click “OK” to exit the wireless adaptor window.

*<ins>Configuring IP*</ins>

1. Go to Start > Control Panel > Network Connections > Network Connections
2. Right-click on your wireless adaptor and click “Properties”
3. Under the heading “This connection uses the following items”, click “Internet Protocol (TCP/IP)
4. Click “Properties”
5. A new window should pop up, click “Alternate Configuration”
6. Click “User configured” radio button
7. Here, you can specify the address. For computer EMB-01, specify the IP as 192.168.0.2, subnet mask as 255.255.255.0, Default gateway as 192.168.0.1. Under “Preferred DNS Server”, enter the value “208.67.222.222″. As for “Alternate DNS Server”, enter the value “208.67.220.220″. These values are sourced from OpenDNS, which will enable the computer to understand the numerical address details of a website.
8. Click “OK”

### J2EE

Java 2 Platform Enterprise Edition (J2EE) three-tiered applications are distributed over three locations: client machines, the J2EE server machine, and the database or legacy machines at the back end. Three-tiered applications that run in this way extend the standard two-tiered client and server model by placing a multithreaded application server between the client application and back-end storage.

![J2EE 3-tier architecture](images/2_J2EE.JPG "J2EE 3-tier architecture")

### JFreeChart

JFreeChart is a free chart library for the Java platform. It is designed for use in applications, applets, servlets and JSP. It can generate pie charts, bar charts (regular and stacked, with an optional 3D-effect), line charts, scatter plots, time series charts (including moving averages, high-low-open-close charts and candlestick plots), Gantt charts, meter charts (dial, compass and thermometer), and more.

**<ins>Example Plots</ins>**

*Pie Chart*

![Pie](images/3_Pie_Chart.JPG "Pie chart")

*Bar Chart*

![Bar](images/4_Bar_Chart.JPG "Bar chart")

### Comet

Comet is a Web application model that enables web servers to send data to the client without having to explicitly request it. Comet is actually an umbrella term for multiple techniques for achieving client-server interaction. All methods have in common that they rely on browser-native technologies such as JavaScript, rather than on proprietary plug-ins.

In the early days of the World Wide Web, the browser would make multiple server requests: one for the page content and one for each page component. Ajax (asynchronous JavaScript and XML), allowed far greater control over page content by providing the ability to send server requests for as little, or as much data as the browser needed to update. In addition, its asynchronous nature supported multiple simultaneous calls - even while other elements downloaded. One problem that Ajax did not adequately solve was the issue of data synchronization between the client and server. Since the browser would not know if something had changed on the server, Web applications typically polled the server on a periodic basis to ask if new information was available. Although better than whole page refreshes, high polling frequencies could still waste server resources and bandwidth.

Comet techniques come in two flavors: streaming and long polling. In a Web application using streaming Comet, the browser opens a single persistent connection to the server for all Comet events and handles them incrementally on the browser side. Specific examples of streaming Comet techniques include the Hidden IFrame and the XMLHttpRequest Server Push. In long polling, the client makes an Ajax request to the server, which is kept open until the server has new data to send to the browser. 
Upon receiving the server response, the browser initiates a new long polling request in order to obtain the next data set. Long polling can be achieved using either Ajax or script tag techniques. Comet streaming techniques are considered to be somewhat inferior to long polling for several reasons. The Hidden IFrame technique has two major flaws: the lack of a reliable way to handle errors and the impossibility of tracking the state of the request calling process. The XMLHttpRequest Server Push technique, is even more limited in applicability, as it only works with Gecko-based browsers. Long polling, on the other hand, is easier to implement on the browser side, and works in every browser that supports JavaScript and Ajax.

### System Architecture

![System Architecture](images/4_System_Architecture.JPG "System Architecture")

### Relational Database Model

**Users**

|      User_ID       |     Password       |     Name           |
|--------------------|--------------------|--------------------|
|     Varchar(30)    |     Varchar(30)    |     Varchar(30)    |

**Instructors**

|     Instructor_ID  |     Password       |     Name           |
|--------------------|--------------------|--------------------|
|     Varchar(30)    |     Varchar(30)    |     Varchar(30)    |

**Instructor_Quiz**

|     Quiz_num       |     Quiz_key       |     Status         |     Quiz_details     |
|--------------------|--------------------|--------------------|----------------------|
|     Varchar(10)    |     Varchar(10)    |     Varchar(10)    |     Varchar(400)     |

**Quiz_<quiz_number>**

|     Question_num    |     Question        |     Option_a        |     Option_b        |     Option_c        |     Option_d        |     Correct_Ans    |
|---------------------|---------------------|---------------------|---------------------|---------------------|---------------------|--------------------|
|     Int             |     Varchar(400)    |     Varchar(400)    |     Varchar(400)    |     Varchar(400)    |     Varchar(400)    |     Varchar(1)     |

**Responses_Quiz_<quiz_no>**

|     User_ID        |     Quiz_num |     Marked_Ans    |     Marks_Obtained    |     Attempt       |
|--------------------|--------------|-------------------|-----------------------|-------------------|
|     Varchar(30)    |     Int      |     Varchar(1)    |     Int               |     Varchar(3)    |

**Scores_Quiz__<quiz_no>**

|    Quiz_num    |     User_ID        |     Name           |     Marks    |
|----------------|--------------------|--------------------|--------------|
|     Int        |     Varchar(30)    |     Varchar(30)    |     Int      |

**Instructor_Feedback**

|    Feedback_num    |     Feedback_key    |     Status         |     Feedback_details    |
|--------------------|---------------------|--------------------|-------------------------|
|    Varchar(10)     |     Varchar(10)     |     Varchar(10)    |     Varchar(400)        |

**Feedback_<feedback_no>**

| Question_num |     Question        |
|--------------|---------------------|
|     Int      |     Varchar(400)    |

**Response_Feedback_<feedback_no>**

|     User_ID        |     Question_num    |     Rating    |
|--------------------|---------------------|---------------|
|     Varchar(30)    |     Int             |     int       |
