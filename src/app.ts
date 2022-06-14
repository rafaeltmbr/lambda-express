import express, { Router } from "express";

const router = Router();

export const app = express();

app.use(router);

router.get("/hi", async (req, res) => {
  res.json({ message: "Hello babe!" });
});

router.get("/bye", async (req, res) => {
  res.json({ message: "Bye bye!" });
});
