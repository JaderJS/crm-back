import dotenv from "dotenv";

dotenv.config();

const config = {
  PORT: process.env.PORT || 80,
  HOST: process.env.HOST || "0.0.0.0",
  PRIVATE_KEY_TOKEN: process.env.PRIVATE_KEY_TOKEN || "Fwo",
  FRONT_URL: process.env.FRONT_URL || `http://localhost:${process.env.PORT}`,
  NODE_ENV: process.env.NODE_ENV || "development",
  VERSION: process.env.VERSION || "initial",
  PULSE_API_KEY: process.env.PULSE_API_KEY || "",
  MINDFORGE_URL:
    process.env.MINDFORGE_URL ||
    "https://mindforge-backend-kb5o34rasa-uc.a.run.app",
  DATABASE_URL: process.env.DATABASE_URL,
  SMTP_HOST: process.env.SMTP_HOST || "smtp-relay.brevo.com",
  SMTP_USER: process.env.SMTP_USER || "ferramentas.colli@v4company.com",
  SMTP_PASSWORD: process.env.SMTP_PASSWORD || "5YNbtq2h3Fs8rVak",
  SLACK_TOKEN: process.env.SLACK_TOKEN,
};
console.log("config: ", config);

export { config };
