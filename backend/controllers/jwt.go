package controllers

import (
	"fmt"
	"time"

	"github.com/Demitroi/certuit-prueba/model"
	"github.com/dgrijalva/jwt-go"
)

type Claims struct {
	Usuario *model.Usuario `json:"usuario"`
	jwt.StandardClaims
}

var JwtKey = []byte(`ded62b34e058201d3f7d8fa3a9ab133f`)

func signin(usuario *model.Usuario) (string, error) {
	// La validez del token es de 24 horas
	fechaExpiracion := time.Now().Add(24 * time.Hour)
	// Declarar los claims del token incluyen la sesión y fecha de expiración
	claims := &Claims{
		Usuario: usuario,
		StandardClaims: jwt.StandardClaims{
			ExpiresAt: fechaExpiracion.Unix(),
		},
	}
	// Declarar token con sha256
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	// Crear el jwt string
	return token.SignedString(JwtKey)
}

func Verify(tokenString string) (usuario *model.Usuario, err error) {
	// Inicializar claims
	claims := &Claims{}
	// Parsear el jwt token
	token, err := jwt.ParseWithClaims(tokenString, claims, func(*jwt.Token) (interface{}, error) {
		return JwtKey, nil
	})
	// Verificar que el token este correcto
	if err != nil {
		return nil, fmt.Errorf("No autorizado")
	}
	if !token.Valid {
		return nil, fmt.Errorf("No autorizado")
	}
	return claims.Usuario, nil
}
