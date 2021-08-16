package db

import (
	"github.com/Demitroi/certuit-prueba/model"
	"github.com/didi/gendry/scanner"
)

// GetUsuario obtiene el usuario por su id
func GetUsuario(u string) (*model.Usuario, error) {
	rows, err := DB.Query("SELECT id, usuario, correo, pswd_checksum FROM usuarios WHERE usuario=?", u)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var user model.Usuario
	err = scanner.Scan(rows, &user)
	if err != nil {
		return nil, err
	}
	return &user, nil
}
