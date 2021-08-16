package db

import (
	"github.com/Demitroi/certuit-prueba/model"
	"github.com/didi/gendry/builder"
	"github.com/didi/gendry/scanner"
)

func ListRutas(cveMunicipo string) ([]model.Ruta, error) {
	// El filtro de municipio solo se aplica cuando no está vacío
	where := map[string]interface{}{}
	if len(cveMunicipo) > 0 {
		where["cve_municipio"] = cveMunicipo
	}
	// Generar el query
	selectFields := []string{"id", "nombre", "cve_municipio"}
	query, args, err := builder.BuildSelect("rutas", where, selectFields)
	if err != nil {
		return nil, err
	}
	rows, err := DB.Query(query, args...)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var rutas []model.Ruta
	err = scanner.Scan(rows, &rutas)
	if err != nil {
		return nil, err
	}
	return rutas, nil
}
