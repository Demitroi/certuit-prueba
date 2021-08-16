package service

import (
	"crypto/sha256"
	"fmt"

	"github.com/Demitroi/certuit-prueba/db"
	"github.com/Demitroi/certuit-prueba/model"
)

// Login valida el usuario y contraseña, si todo esta correcto retorna un usuario
func Login(l *model.Login) (*model.Usuario, error) {
	// Primero obtener el usuario
	usuario, err := db.GetUsuario(l.Usuario)
	if err != nil {
		return nil, err
	}
	// Obtener el sha256sum de la contraseña para compararla con la base de datos
	sum := sha256.Sum256([]byte(l.Password))
	if *usuario.PswdChecksum != fmt.Sprintf("%x", sum) {
		return nil, fmt.Errorf("Usuario y contraseña inválidos")
	}
	// Quitar la contraseña
	*usuario.PswdChecksum = ""
	return usuario, nil
}
