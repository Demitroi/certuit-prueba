package main

import (
	"log"

	"github.com/Demitroi/certuit-prueba/db"
	"github.com/Demitroi/certuit-prueba/routes"
)

func main() {
	// Inicializar conexión
	err := db.SetUpDatabase()
	if err != nil {
		log.Fatal(err)
	}
	r := routes.SetupRoutes()
	panic(r.Run())
}