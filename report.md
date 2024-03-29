### Design and Implementation
We created a data structure and associated web page for chip transactions.
Users can customize the manufacturing process when they purchase chips on the site. For example: for the same process, they can choose their preferred factory to execute.

Our platform supports two login methods: user mode and plant mode.

We help users manage the package information of a class of chips. Moreover, we use types to distinguish similar things and names to locate individuals. Such as chip and chip type. The method above helps us sort and categorize.

We constructed a right-plant-led pyramid-structured database. We note the importance of operational data from which we can infer the state of machines and operations. We capture correlations between chips, operations, and machines. We will create queries and modify paths from this connection. At the same time, we will link the order determined according to the status of the part to the customer.

In particular, we connect the database and the webpage through phpstudy.

### Functions
#### Login interface:
- The user can enter the account number and password to log in. He can also register a new account. If the account and password do not match, the login will fail. After successful login, the user can place an order for chips.

- In factory mode, users can log in by factory number. After successful login, he can see all chip and package information.

We provide many services (the following are some crucial features):

#### Chip search: 
Users can query chip information that he has not ordered. When he has set all the parameters required for production and submitted it, he can pay for the order, and the factory starts production.

![picture](https://github.com/CSC3170-2022Fall/project-hope/blob/main/other%20information/6681672238634_.pic.jpg)

#### Query package: 
Users can query enough package information. After entering the package number, the system will display the data.

![picture](https://github.com/CSC3170-2022Fall/project-hope/blob/main/other%20information/6691672238635_.pic.jpg)

#### Query machine: 
Entering the machine number, the user can check the machine status. The number 1 in the status parameter column indicates that the machine is working, and 0 indicates that the machine is not working.
The platform will notify the user of an error if the input type is illegal.

![picture](https://github.com/CSC3170-2022Fall/project-hope/blob/main/other%20information/6701672238635_.pic.jpg)

The factory pattern also provides machine queries: 
- Check the machine status
- Pause or start the machines
- Add new machines
