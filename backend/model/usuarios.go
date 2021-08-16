package model

type Usuario struct {
	ID           uint    `json:"id"      db:"id"`
	Usuario      string  `json:"usuario" db:"usuario"`
	Correo       string  `json:"correo"  db:"correo"`
	PswdChecksum *string `json:"-"       db:"pswd_checksum"`
	Token        string  `json:"token"   db:"-"`
}

type Login struct {
	Usuario  string `json:"usuario"`
	Password string `json:"password"`
}
