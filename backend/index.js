const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const faker = require('faker');
const mysql = require('mysql2/promise');

// Database configuration
const dbConfig = {
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'consumerdbtest'
};

// Function to generate parcels for existing users
async function generateParcels(connection) {
  try {
    // Generate random parcels for 0-2 users
    const numParcels = faker.datatype.number({ min: 0, max: 2 });

    for (let i = 0; i < numParcels; i++) {
      const senderName = faker.name.findName();
      const senderAddress = faker.address.streetAddress();
      const senderPhone = faker.phone.phoneNumberFormat().replace(/-/g, '');

      // Fetch a random user as the recipient
      const [recipient] = await connection.execute('SELECT name FROM user ORDER BY RAND() LIMIT 1');
      const recipientName = recipient[0].name;

      const recipientAddress = faker.address.streetAddress();
      const recipientPhone = faker.phone.phoneNumberFormat().replace(/-/g, '');

      const parcelSize = {
        width: faker.datatype.number({ min: 1, max: 50 }),
        height: faker.datatype.number({ min: 1, max: 50 }),
        length: faker.datatype.number({ min: 1, max: 50 }),
        weight: faker.datatype.float({ min: 0.1, max: 10.0 })
      };

      // Fetch a random location
      const [location] = await connection.execute('SELECT locationname FROM locations ORDER BY RAND() LIMIT 1');

      const reservationCode = faker.datatype.number({ min: 1000, max: 9999 });

      // Update cabinets with the generated code, location, and status changes
      await connection.execute(
        'UPDATE cabinets SET code = ?, cabinetStatus = "Occupied", IsAvailable = false WHERE cabinetStatus = "Available" AND IsAvailable = true AND Locationname = ? ORDER BY RAND() LIMIT 1',
        [reservationCode, location[0].locationname]
      );

      // Insert the parcel into the database
      const [result] = await connection.execute(
        'INSERT INTO parcel ( sendername, senderaddress, senderPhoneNumber, ' +
        'recipientname, recipientaddress, recipientPhoneNumber, ' +
        'width, height, length, weight, location, reservationCode, status) ' +
        'VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
        [
          senderName,
          senderAddress,
          senderPhone,
          recipientName,
          recipientAddress,
          recipientPhone,
          parcelSize.width,
          parcelSize.height,
          parcelSize.length,
          parcelSize.weight,
          location[0].locationname,
          reservationCode,
          'Parcel In Locker'
        ]
      );

      console.log(`Parcel with ID ${result.insertId} generated successfully.`);
    }

    console.log('Succeed'); // Log succeed after generating parcels
  } catch (error) {
    console.error('Error generating parcels:', error);
    // Rollback the transaction in case of an error
    if (connection && connection.state !== 'disconnected') {
      await connection.rollback();
    }
  } finally {
    // Commit the transaction and close the connection after use
    if (connection && connection.state !== 'disconnected') {
      await connection.commit();
      connection.end();
    }
  }
}

// Create a connection and handle success or error
mysql.createConnection(dbConfig)
  .then(async (connection) => {
    console.log('Database connected');

    // Call generateParcels after a delay and then at intervals (every 30 seconds)
    setTimeout(async () => {
      await generateParcels(connection);

      // Call generateParcels at intervals (every 30 seconds)
      setInterval(async () => {
        const newConnection = await mysql.createConnection(dbConfig);
        await generateParcels(newConnection);
      }, 30 * 1000); // Execute every 30 seconds
    }, 30 * 1000); // Initial delay of 30 seconds

    // Start the server
    app.listen(PORT, () => {
      console.log(`Server is running on port ${PORT}`);
    });
  })
  .catch((error) => {
    console.error('Error connecting to the database:', error);
  });
