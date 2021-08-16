package model

type Ruta struct {
	ID          uint   `json:"id_ruta"       db:"id"`
	Nombre      string `json:"nombre"        db:"nombre"`
	CveMunicipo string `json:"cve_municipio" db:"cve_municipio"`
}
