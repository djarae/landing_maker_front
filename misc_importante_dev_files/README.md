# 🎯 Landing Maker

Aplicación para crear landings simples y bonitas, basadas en presets visuales.

## 📦 Estructura del Proyecto

```
landing_maker/
├── landing_maker_front/    # Vue 3 SPA (Frontend público - landings)
└── landing_maker_back/     # .NET 10 API + Backoffice Razor Pages
```

## 🚀 Requisitos

- **Node.js** >= 20.x
- **.NET SDK** >= 10.0
- **PostgreSQL** >= 14

## 🔧 Configuración

### 1. Base de Datos PostgreSQL

Crea una base de datos en PostgreSQL:

```sql
CREATE DATABASE landing_maker;
```

### 2. Backend (.NET)

```bash
cd landing_maker_back

# Configura las variables de entorno
# Edita el archivo .env con tus datos de PostgreSQL
```

**Archivo `.env`:**
```env
DATABASE_HOST=localhost
DATABASE_PORT=5432
DATABASE_NAME=landing_maker
DATABASE_USER=postgres
DATABASE_PASSWORD=tu_password_aqui
```

### 3. Ejecutar Migraciones

```bash
cd landing_maker_back

# Instalar herramientas de EF (si no las tienes)
dotnet tool install --global dotnet-ef

# Crear la migración inicial
dotnet ef migrations add InitialCreate

# Aplicar migraciones a la base de datos
dotnet ef database update
```

### 4. Frontend (Vue)

```bash
cd landing_maker_front

# Instalar dependencias (si aún no lo has hecho)
npm install
```

## ▶️ Ejecutar en Desarrollo

### Terminal 1 - Backend API + Backoffice
```bash
cd landing_maker_back
dotnet run
```
El servidor inicia en: `http://localhost:5000`

### Terminal 2 - Frontend Vue
```bash
cd landing_maker_front
npm run dev
```
El servidor inicia en: `http://localhost:5173`

## 🌐 URLs

| Servicio | URL | Descripción |
|----------|-----|-------------|
| **Backoffice** | http://localhost:5000 | Panel de administración |
| **API** | http://localhost:5000/api/landings | Endpoints REST |
| **Frontend** | http://localhost:5173/?id=1 | Ver landing por ID |

## 🎨 Presets Disponibles

### Mobile App
- **Silver / Rhodium** - Metálico elegante con acentos dorados
- **Moderno Simple** - Minimalista estilo Apple
- **Tecno Terminal** - Estilo hacker/Matrix

### Pyme
- **Miel** - Cálido artesanal (amarillos/dorados)
- **Chocolate** - Gourmet sofisticado (marrones)
- **Caramelo** - Dulce y amigable (naranjas)

## 📱 Flujo de Uso

1. Accede al **Backoffice**: http://localhost:5000
2. **Regístrate** con email y contraseña
3. **Crea una landing**:
   - Elige un nombre
   - Selecciona el preset (Mobile App o Pyme)
   - Elige el estilo visual
   - Configura el modo día/noche
4. **Edita** los textos y contenido
5. **Publica** la landing
6. **Visualiza** en el frontend: http://localhost:5173/?id={ID}

## 📂 Estructura de Archivos

### Backend
```
landing_maker_back/
├── Controllers/           # API REST
├── Data/                  # DbContext y migraciones
├── Models/               # Entidades y enums
├── Pages/                # Razor Pages (Backoffice)
│   ├── Account/          # Login, Register, Logout
│   └── Landings/         # CRUD de landings
├── wwwroot/              # Archivos estáticos
│   ├── css/              # Estilos del backoffice
│   └── uploads/          # Imágenes subidas
└── Program.cs            # Configuración de la app
```

### Frontend
```
landing_maker_front/
├── src/
│   ├── components/       # Componentes reutilizables
│   ├── presets/          # Presets de landings
│   │   ├── MobileApp/    # Preset estilo Shazam
│   │   └── Pyme/         # Preset tienda/negocio
│   ├── services/         # API calls
│   ├── views/            # Vistas principales
│   └── assets/styles/    # Estilos globales
└── .env                  # Variables de entorno
```

## 🔒 Autenticación

- El backoffice usa **ASP.NET Core Identity** con cookies
- Solo usuarios autenticados pueden crear/editar landings
- Las landings públicas no requieren autenticación

## 📝 Notas

- Las landings solo son visibles en el frontend si están **publicadas**
- Cada usuario puede crear **múltiples landings**
- El modo día/noche puede ser:
  - **Toggle**: El usuario final puede cambiar
  - **Day Only**: Siempre modo día
  - **Night Only**: Siempre modo noche

---

**Versión:** MVP v1  
**Stack:** Vue 3 + .NET 10 + PostgreSQL + Entity Framework Core
