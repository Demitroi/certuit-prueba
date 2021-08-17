package controllers

import (
	"github.com/Demitroi/certuit-prueba/db"
	"github.com/Demitroi/certuit-prueba/service"
	"github.com/gin-gonic/gin"
	"github.com/spf13/cast"
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

func GetRuta(c *gin.Context) {
	id := cast.ToUint(c.Param("id"))
	ruta, err := service.GetRuta(id)
	if err != nil {
		c.JSON(500, gin.H{"msg": err.Error()})
		return
	}
	c.JSON(200, ruta)
}
