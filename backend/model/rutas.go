package model

type Ruta struct {
	ID          uint      `json:"id_ruta"              db:"id"`
	CveMunicipo string    `json:"cve_municipio"        db:"cve_municipio"`
	Nombre      string    `json:"nombre"               db:"nombre"`
	Kilometros  float32   `json:"kilometros,omitempty" db:"-"`
	Tiempo      uint      `json:"tiempo,omitempty"     db:"-"`
	Destinos    []Destino `json:"destinos,omitempty"   db:"-"`
}

type Destino struct {
	ID         uint    `json:"id_destino"   db:"id"`
	IDCaseta   uint    `json:"id_caseta"    db:"id_caseta"`
	Nombre     string  `json:"nombre"       db:"nombre"`
	Kilometros float32 `json:"kilometros"   db:"kilometros"`
	TiempoMin  uint    `json:"tiempo_min"   db:"tiempo_min"`
	Caseta     *Caseta `json:"caseta"       db:"-"`
}

type Caseta struct {
	ID      uint     `json:"id_caseta" db:"id"`
	Nombre  string   `json:"nombre"    db:"nombre"`
	Tarifas []Tarifa `json:"tarifas"   db:"-"`
}

type Tarifa struct {
	ID             uint    `json:"id_caseta_tarifa" db:"id"`
	IDCaseta       uint    `json:"id_caseta"        db:"id_caseta"`
	TipoTransporte string  `json:"tipo_transporte"  db:"tipo_transporte"`
	Precio         float32 `json:"precio"           db:"precio"`
}
