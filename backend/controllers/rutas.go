package controllers

import (
	"github.com/Demitroi/certuit-prueba/db"
	"github.com/gin-gonic/gin"
)

func ListRutas(c *gin.Context) {
	cveMunicipo := c.Query("cve_municipio")
	rutas, err := db.ListRutas(cveMunicipo)
	if err != nil {
		c.JSON(500, gin.H{"msg": err.Error()})
		return
	}
	c.JSON(200, rutas)
}
