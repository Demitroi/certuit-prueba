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

func GetRuta(id uint) (*model.Ruta, error) {
	rows, err := DB.Query("SELECT id, nombre, cve_municipio FROM rutas WHERE id=?", id)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var ruta model.Ruta
	err = scanner.Scan(rows, &ruta)
	if err != nil {
		return nil, err
	}
	return &ruta, nil
}

func GetRutaDestinos(idDestino uint) ([]model.Destino, error) {
	rows, err := DB.Query(`SELECT r.id AS id, d.id_caseta, d.nombre, d.kilometros, d.tiempo_min
		FROM rutas_destinos AS r 
			LEFT JOIN destinos AS d ON d.id = r.id_destino
		WHERE r.id_ruta=?`, idDestino)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var destinos []model.Destino
	err = scanner.Scan(rows, &destinos)
	if err != nil {
		return nil, err
	}
	return destinos, nil
}

func GetCaseta(idCaseta uint) (*model.Caseta, error) {
	rows, err := DB.Query("SELECT id, nombre FROM casetas WHERE id=?", idCaseta)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var caseta model.Caseta
	err = scanner.Scan(rows, &caseta)
	if err != nil {
		return nil, err
	}
	return &caseta, nil
}

func GetCasetaTarifas(idCaseta uint) ([]model.Tarifa, error) {
	rows, err := DB.Query("SELECT id, id_caseta, tipo_transporte, precio FROM casetas_tarifas WHERE id_caseta=?", idCaseta)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var tarifas []model.Tarifa
	err = scanner.Scan(rows, &tarifas)
	if err != nil {
		return nil, err
	}
	return tarifas, nil
}
