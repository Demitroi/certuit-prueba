package controllers

import (
	"github.com/Demitroi/certuit-prueba/db"
	"github.com/gin-gonic/gin"
)

func GetUnidades(c *gin.Context) {
	unidades, err := db.GetUnidades()
	if err != nil {
		c.JSON(500, gin.H{"msg": err.Error()})
		return
	}
	c.JSON(200, unidades)
}
