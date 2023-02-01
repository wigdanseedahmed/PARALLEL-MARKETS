const express = require('express');
const bodyParser = require("body-parser");
const mongoose = require('mongoose');

const port = process.env.port || 4000;


// Set up Express app
const sudanHorizonScannerApp = express();

// Connect to mongodb
mongoose.connect(
    'mongodb://localhost/parallel_markets',
    {
        useNewUrlParser: true,
        useUnifiedTopology: true
    }
);
mongoose.Promise = global.Promise;

const connection = mongoose.connection;
connection.once("open", () => {
    console.log("MongoDb connected");
});

// Middleware to allow users to input output image
sudanHorizonScannerApp.use(express.static('public'))

// Body Parse Middleware 
sudanHorizonScannerApp.use(bodyParser.json());

// Initialize routes
data = {
    msg: "Welcome on DevStack Blog App development YouTube video series",
    info: "This is a root endpoint",
    Working: "Documentations of other endpoints will be release soon :)",
    request:
        "Hey if you did'nt subscribed my YouTube channle please subscribe it",
};

sudanHorizonScannerApp.route("/").get((req, res) => res.json(data));

// CORS
const cors = require('cors');
sudanHorizonScannerApp.use(cors({
    origin: '*',
    credentials: true,
    
}));

// Middleware
sudanHorizonScannerApp.use("/uploads", express.static("uploads"));
sudanHorizonScannerApp.use(express.json());

// Initialize routes
    // PARALLEL MARKETS
sudanHorizonScannerApp.use('/parallel-markets', require('./Routes/Digital Avatar/clusters'))

    // USERS
sudanHorizonScannerApp.use("/user", require("./Routes/user"))
//sudanHorizonScannerApp.use("/api", require("./routes/profile"))

// Error handling Middleware
sudanHorizonScannerApp.use(function (err, req, res, next) {
    //console.log(err);
    res.status(422).send({ error: err.message });
});

// Listen for requests
sudanHorizonScannerApp.listen(port, function () {
    console.log('now listening for requests');
});