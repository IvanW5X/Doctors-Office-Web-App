// Authors: Sean Clayton, Ivan Wong, Alex Loomis

// Module Imports & Config
const express = require("express");
const app = express();
// Use port from command line argument (process.argv[2]), or environment, or default to 3000
const PORT = process.argv[2] || process.env.PORT || 3000;

require("dotenv").config();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

// DB queries to grab initial data
const getOfficeData = require("./services/office-data");
const { getDoctorData } = require("./services/doctor-data");

// View Engine Setup
app.set("view engine", "ejs");

// Main page route
app.get("/", (_, res) => {
  res.render("main-page", { error: null });
});

// Backend API routes
const loginRoutes = require("./routes/login");
const patientRoutes = require("./routes/patient-routes");
const employeeRoutes = require('./routes/employee-routes');
const newUserRoutes = require('./routes/new-user-routes');
const commonRoutes = require('./routes/common-routes')

app.use("/login", loginRoutes);
app.use("/patient", patientRoutes);
app.use("/employee", employeeRoutes);
app.use('/new-user', newUserRoutes);
app.use('/common', commonRoutes);

// New user route -- No need to make a new route file, little logic required
app.get("/new-user-dashboard", async (req, res) => {
  // Get required data for a new user
  const offices = await getOfficeData();
  const doctors = await getDoctorData();

  // Load new user page
  res.render("new-user/new-user-dashboard", { offices, doctors });
});

// Server Startup
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
  console.log(`Access the application at: http://localhost:${PORT}/`);
  console.log(``);
});
