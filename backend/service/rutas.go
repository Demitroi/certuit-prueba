package service

import (
	"github.com/Demitroi/certuit-prueba/db"
	"github.com/Demitroi/certuit-prueba/model"
)

func GetRuta(id uint) (*model.Ruta, error) {
	// Obtener la ruta
	ruta, err := db.GetRuta(id)
	if err != nil {
		return nil, err
	}
	// Obtener los destinos de la ruta
	destinos, err := db.GetRutaDestinos(id)
	if err != nil {
		return nil, err
	}
	ruta.Destinos = destinos
	for i, destino := range ruta.Destinos {
		// Calcular el tiempo y los kilometros
		ruta.Kilometros += destino.Kilometros
		ruta.Tiempo += destino.TiempoMin
		// Obtener las caseta si la tienen
		if destino.IDCaseta > 0 {
			caseta, err := db.GetCaseta(destino.IDCaseta)
			if err != nil {
				return nil, err
			}
			// Obtener las tarifas de la caseta
			tarifas, err := db.GetCasetaTarifas(caseta.ID)
			if err != nil {
				return nil, err
			}
			caseta.Tarifas = tarifas
			ruta.Destinos[i].Caseta = caseta
		}
	}

	return ruta, nil
}
