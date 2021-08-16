package controllers

import (
	"github.com/Demitroi/certuit-prueba/model"
	"github.com/Demitroi/certuit-prueba/service"
	"github.com/gin-gonic/gin"
)

func Login(c *gin.Context) {
	var login model.Login
	err := c.ShouldBindJSON(&login)
	if err != nil {
		c.JSON(400, gin.H{"msg": err.Error()})
		return
	}
	// Hacer el login
	usuario, err := service.Login(&login)
	if err != nil {
		c.JSON(400, gin.H{"msg": err.Error()})
		return
	}
	// Generar el JWT token
	token, err := signin(usuario)
	if err != nil {
		c.JSON(500, gin.H{"msg": err.Error()})
		return
	}
	usuario.Token = token
	c.JSON(200, usuario)
}
