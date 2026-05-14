 import express from "express";

const app = express();

app.get("/", (req, res) => {
    res.status(200).json({ message: "Hello from CI/CD" });
});
app.get("/health", (req, res) => {
    res.status(200).json({ message: "Healthy" });
});

app.listen(3000, () => {
    console.log("Server is running on port 3000");
});
