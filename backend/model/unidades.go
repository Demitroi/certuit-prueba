package model

type Unidad struct {
	ID             uint   `json:"id"              db:"id"`
	IDCombustible  uint   `json:"id_combustible"  db:"id_combustible"`
	Nombre         string `json:"nombre"          db:"nombre"`
	Placas         string `json:"placas"          db:"placas"`
	TipoTransporte string `json:"tipo_transporte" db:"tipo_transporte"`
	CapPasajeros   uint   `json:"cap_pasajeros"   db:"cap_pasajeros"`
}
