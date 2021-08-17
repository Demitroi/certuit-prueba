package db

import (
	"github.com/Demitroi/certuit-prueba/model"
	"github.com/didi/gendry/scanner"
)

func GetUnidades() ([]model.Unidad, error) {
	rows, err := DB.Query(`SELECT id, id_combustible, nombre, placas, tipo_transporte, cap_pasajeros
		FROM unidades_transporte`)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var unidades []model.Unidad
	err = scanner.Scan(rows, &unidades)
	if err != nil {
		return nil, err
	}
	return unidades, nil
}
