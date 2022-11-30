package main

import (
	"log"

	"github.com/gofiber/fiber/v2"
)

func main() {
	app := fiber.New(fiber.Config{
		BodyLimit: 4000 * 1024 * 1024,
	})

	app.Get("/", func(c *fiber.Ctx) error {
		return c.SendString("Hello, World!")
	})

	app.Post("/process", func(ctx *fiber.Ctx) error {

		metadata := ctx.FormValue("metadata")
		log.Println(metadata)

		file, err := ctx.FormFile("file")
		if err != nil {
			log.Println(err)
			return ctx.Status(500).SendString("error")
		}
		if err := ctx.SaveFile(file, "./"+file.Filename); err != nil {
			log.Println(err)
			return ctx.Status(500).SendString("error")
		}

		return ctx.Status(200).SendString("ok")

	})

	log.Fatal(app.Listen(":5000"))
}
