package db

import (
	"database/sql"
	"fmt"

	"github.com/didi/gendry/scanner"
	_ "github.com/go-sql-driver/mysql"
)

var DB *sql.DB

func init() {
	scanner.SetTagName("db")
}

// SetUpDatabase inicializa la conexión a la base de datos
func SetUpDatabase() error {
	// Abrir conexión con dsn
	db, err := sql.Open("mysql", "root:super_ultra_secreto@tcp(db:3306)/presupuestos_viaje")
	if err != nil {
		return fmt.Errorf("falla al abrir conexión: %w", err)
	}
	DB = db
	return nil
}
