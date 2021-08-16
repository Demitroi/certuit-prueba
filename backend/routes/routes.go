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
		public := v1.Group("public")
		{
			public.POST("login", controllers.Login)
		}
	}
	return r
}
