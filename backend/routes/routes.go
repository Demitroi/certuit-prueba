package routes

import (
	"github.com/Demitroi/certuit-prueba/controllers"
	"github.com/gin-gonic/gin"
)

// SetupRoutes es la definición de las rutas
func SetupRoutes() *gin.Engine {
	r := gin.Default()
	v1 := r.Group("/api/presupuestos/v1")
	{
		// Rutas publicas
		public := v1.Group("public")
		{
			public.POST("login", controllers.Login)
		}
		// Rutas con autenticación
		auth := v1.Group("")
		auth.Use(func(c *gin.Context) {
			// Obtener el token del header
			token := c.GetHeader("x-Token")
			usuario, err := controllers.Verify(token)
			if err != nil {
				c.AbortWithStatusJSON(401, gin.H{"msg": "No autorizado"})
				return
			}
			// Establecer la información del usuario
			c.Set("usuario", usuario)
			c.Next()
		})
		{
			// Obtiene información del usuario
			auth.GET("sesion", func(c *gin.Context) {
				usuario, _ := c.Get("usuario")
				c.JSON(200, usuario)
			})
			auth.GET("rutas", controllers.ListRutas)
			auth.GET("rutas/:id", controllers.GetRuta)
			auth.GET("unidades", controllers.GetUnidades)
		}
	}
	return r
}
