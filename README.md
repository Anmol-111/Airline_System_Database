 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Airline Reservation System</title>
</head>
<body>
  <h1>Airline Reservation System</h1>

  <p><strong>An Airline Reservation System</strong> stores the following information:</p>

  <h2>1. Flight Details</h2>
  <p>Includes the originating flight terminal and destination terminal, along with stops in between, number of seats booked/available between two destinations, etc.</p>

  <h2>2. Customer Description</h2>
  <p>Includes customer code, name, address, and phone number. This information may be used for emergencies or other customer-related inquiries.</p>

  <h2>3. Reservation Description</h2>
  <p>Includes customer code number, flight number, date of booking, date of travel. Additional fields/relations may be assumed as needed.</p>

  <h3>Applications of the System:</h3>
  <ul>
    <li><strong>a.</strong> Booking/cancellation of flights between any source and destination, including connecting flights if no direct flight is available.</li>
    <li><strong>b.</strong> Identifying high fliers (frequent flyers) and assigning appropriate reward points.</li>
  </ul>

  <h2>Design Includes:</h2>
  <ol>
    <li>The global schema, fragmentation schema, and allocation schema.</li>
    <li>SQL commands for the above queries/applications.</li>
    <li>Generation of responses for the applications.</li>
    <li>Implementation using a centralized DBMS.</li>
  </ol>

  <h2>Distributed Database</h2>
  <p>A distributed database enables a single application to operate on data that is spread across different databases connected via a communication network.</p>

  <p><strong>Definition:</strong> A distributed database system consists of a collection of ‘sites’, connected via a network, where:</p>
  <ul>
    <li>Each site is a complete database system on its own.</li>
    <li>Sites work together to ensure users can access any data from any site as if it were local.</li>
  </ul>

  <p>Distributed database systems allow transactions that can access local data or data from multiple sites, requiring inter-site communication for global transactions.</p>

  <p>Each site has its own:</p>
  <ul>
    <li>Local database</li>
    <li>Users</li>
    <li>DBMS and transaction management software</li>
    <li>Data communication manager</li>
  </ul>

  <h3>Sites in the System:</h3>
  <p>The four geographically dispersed sites are: <strong>Delhi, Mumbai, Chennai, and Kolkata</strong>.</p>

  <p>Each site maintains:</p>
  <ul>
    <li><strong>Reservation schema:</strong> (site_code, fl_no, cust_code, travel_date)</li>
    <li><strong>Cite schema:</strong> (Cite_code, Cite_name)</li>
  </ul>

  <h3>Types of Transactions:</h3>
  <ul>
    <li><strong>Local Transaction:</strong> Accesses data only at the site where it was initiated.</li>
    <li><strong>Global Transaction:</strong> Accesses data across one or more different sites.</li>
  </ul>

  <h3>Advantages:</h3>
  <ul>
    <li>Efficient processing (data is stored near usage points)</li>
    <li>Increased accessibility</li>
    <li>Reliability and availability</li>
    <li>Faster query processing</li>
    <li>Mirrors enterprise structure</li>
  </ul>

  <h3>Disadvantages:</h3>
  <ul>
    <li>Increased complexity</li>
    <li>Higher software development cost</li>
    <li>Greater potential for bugs</li>
    <li>Higher processing overhead</li>
  </ul>

  <h3>Commercial Implementations:</h3>
  <ul>
    <li><strong>INRESS/STAR</strong> from The ASK Group Inc.'s Ingress Division</li>
    <li>Distributed database option in SQL Server</li>
  </ul>

  <p>All of the listed systems are based on the relational model.</p>

  <h2>Objectives of Distributed Systems</h2>
  <ol>
    <li>Local autonomy</li>
    <li>No reliance on a central site</li>
    <li>Continuous operation</li>
    <li>Location independence</li>
    <li>Fragmentation independence</li>
    <li>Replication independence</li>
    <li>Distributed query processing</li>
    <li>Distributed transactions management</li>
    <li>Hardware independence</li>
    <li>Operating system independence</li>
    <li>Network independence</li>
    <li>DBMS independence</li>
  </ol>

  <p>Note: These objectives are not necessarily independent, exhaustive, or equally significant. However, they serve as a foundation for understanding distributed database systems and their functionality.</p>
</body>
</html>
