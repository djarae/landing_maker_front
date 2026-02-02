# 🎯 PROMPT DEFINITIVO – LANDING MAKER (v1)

Este prompt define **exactamente** cómo una IA (Claude / Cursor / Copilot) debe **entender, respetar y construir** la primera versión del proyecto *Landing Maker*.

No debe inferir features extras.
No debe “mejorar” el producto.
No debe agregar presets no definidos.

---

## 1. Rol de la IA

Actúas como **arquitecto de frontend + producto**, siguiendo instrucciones estrictas.

Tu objetivo es:

* Construir una app simple
* Respetar presets visuales
* No sobre‑ingenierizar
* Priorizar claridad y estética limpia

Si algo no está explícitamente pedido:
👉 **NO se hace**.

---

## 2. Descripción general del producto

Landing Maker es una **aplicación para crear landings simples y bonitas**, basadas en **presets visuales**.

No es:

* Un CMS complejo
* Un constructor tipo Webflow
* Un SaaS completo

Es:

* Directo
* Visual
* Limitado a lo necesario

---

## 3. Presets disponibles (VERSIÓN 1)

⚠️ **IMPORTANTE**
En esta primera versión **NO EXISTE** preset de portafolio.

### Presets activos:

1. 🟢 **Pyme** (tienda simple – ejemplo: miel)
2. 🔵 **Mobile App** (inspirado en Shazam)

Nada más.

---

## 4. Referencias visuales (OBLIGATORIAS)

En la raíz del proyecto existen imágenes de referencia:

```
landing_maker_front/
 └─ docs/
    └─ prompts/
       └─ images/
          ├─ Preset1Shazam/
          │  ├─ Shazam1.png
          │  └─ Shazam2.png
          ├─ Preset2Mieleria/
          │  ├─ Miel.png
          │  ├─ Miel1.png
          │  ├─ Miel2.png
          │  ├─ Miel3.png
          │  ├─ Miel4.png
          │  ├─ Miel5.png
          │  ├─ Miel6.png
          │  ├─ Miel7.png
          │  └─ Miel8.png
          └─ styles/
             └─ SilverDayRodhiumNight.png
```

### Reglas:

* Las imágenes están **ordenadas** de primera a última sección
* El preset **Shazam** debe seguirse **muy fielmente**
* El preset **Miel (Pyme)** puede ser **un poco más simple**, pero manteniendo el espíritu

No inventar layouts nuevos.

---

## 5. Preset Mobile App (Shazam‑like)

### Objetivo visual

* Moderna
* Minimalista
* App‑first
* Impacto visual claro

### Secciones (orden fijo)

1️⃣ **Hero App**

* Fondo limpio o degradado
* Mockup de teléfono
* Nombre de la app
* Claim corto
* Botón CTA (descargar / comenzar)

2️⃣ **Features principales**

* Íconos
* Texto corto
* Máx 3–4 features

3️⃣ **Screens / mockups**

* Imágenes de la app
* Scrollable o grid simple

4️⃣ **CTA final**

* Repetición de acción principal

5️⃣ **Footer simple**

* Links básicos

📌 No agregar pricing, testimonios, FAQs.

---

## 6. Preset Pyme (tienda de miel)

### Objetivo visual

* Bonita
* Súper simple
* Confiable
* Amigable

### Secciones (orden fijo)

1️⃣ **Hero**

* Nombre del negocio
* Imagen principal
* Texto corto
* Botón de contacto (WhatsApp / llamada)

2️⃣ **Sección explicativa**

* Qué vende
* Por qué es especial
* Texto breve

3️⃣ **Carrusel de productos**

* Imágenes
* Nombre
* Precio (opcional)
* Navegación simple

4️⃣ **Sección final / contacto**

* CTA
* Redes sociales (opcional)
* Ubicación o mensaje final

📌 No más secciones.
📌 No animaciones pesadas.
📌 Mobile‑first obligatorio.

---

## 7. Sistema de Estilos (Day/Night)

Cada preset tiene **estilos visuales** predefinidos que afectan colores, bordes, fondos y elementos UI.  
Cada estilo tiene **dos variantes**: modo día (light) y modo noche (dark).

### Referencia visual

Ver imagen de ejemplo en:
```
landing_maker_front/docs/prompts/images/styles/SilverDayRodhiumNight.png
```

---

### 7.1 Estilos para Preset Mobile App

#### 🥈 Silver Day / Rhodium Night

| Propiedad | Silver Day | Rhodium Night |
|-----------|------------|---------------|
| **Fondo principal** | Gris plateado metálico (#C0C0C0 → #E8E8E8) | Gris oscuro profundo (#1A1A2E → #16213E) |
| **Acentos** | Dorado suave (#B8860B) | Dorado brillante (#FFD700) |
| **Texto principal** | Negro (#1A1A1A) | Blanco crema (#FAF0E6) |
| **Bordes** | Metálico con bisel 3D | Bronce oscuro con brillo sutil |
| **Botones** | Degradado plateado con sombra | Degradado dorado/bronce |
| **Estilo general** | Elegante, premium, metálico | Lujoso, nocturno, brillos dorados |

#### 🎯 Moderno Simple Day / Night

| Propiedad | Moderno Day | Moderno Night |
|-----------|-------------|---------------|
| **Fondo principal** | Blanco puro (#FFFFFF) | Negro suave (#121212) |
| **Acentos** | Azul eléctrico (#0066FF) | Cyan brillante (#00D4FF) |
| **Texto principal** | Gris oscuro (#333333) | Blanco (#FFFFFF) |
| **Bordes** | Sin bordes, sombras sutiles | Sin bordes, glow sutil |
| **Botones** | Flat con color sólido | Flat con color sólido |
| **Estilo general** | Clean, minimalista, Apple-like | Dark mode moderno, zen |

#### 💻 Tecno Terminal Day / Night

| Propiedad | Tecno Day | Tecno Night |
|-----------|-----------|-------------|
| **Fondo principal** | Gris claro (#F5F5F5) | Negro terminal (#0D0D0D) |
| **Acentos** | Verde código (#00AA00) | Verde neón (#00FF41) |
| **Texto principal** | Negro código (#1E1E1E) | Verde fosforescente (#33FF33) |
| **Fuente** | Monospace (Fira Code, JetBrains) | Monospace (Fira Code, JetBrains) |
| **Bordes** | Líneas finas 1px | Líneas finas verdes brillantes |
| **Botones** | Estilo terminal con borde | ASCII-style o borde neón |
| **Estilo general** | Hacker profesional, limpio | Matrix, cyberpunk, retro-tech |

---

### 7.2 Estilos para Preset Pyme

#### 🍯 Miel Day / Night

| Propiedad | Miel Day | Miel Night |
|-----------|----------|------------|
| **Fondo principal** | Crema cálido (#FFF8DC → #FFFACD) | Marrón miel oscuro (#3D2914) |
| **Acentos** | Ámbar dorado (#FFBF00) | Dorado brillante (#FFD700) |
| **Texto principal** | Marrón cálido (#5D4037) | Crema (#FFF8DC) |
| **Bordes** | Redondeados, suaves | Redondeados con brillo dorado |
| **Botones** | Degradado ámbar/dorado | Ámbar oscuro con glow |
| **Estilo general** | Cálido, natural, artesanal | Nocturno cálido, acogedor |

#### 🍫 Chocolate Day / Night

| Propiedad | Chocolate Day | Chocolate Night |
|-----------|---------------|-----------------|
| **Fondo principal** | Beige café con leche (#F5F5DC) | Chocolate oscuro (#1B0F00) |
| **Acentos** | Marrón chocolate (#7B3F00) | Caramelo (#D2691E) |
| **Texto principal** | Marrón oscuro (#3E2723) | Crema vainilla (#FAEBD7) |
| **Bordes** | Suaves, orgánicos | Sutiles con brillo cálido |
| **Botones** | Marrón sólido elegante | Chocolate con efecto glossy |
| **Estilo general** | Gourmet, sofisticado | Premium, indulgente |

#### 🍬 Caramelo Day / Night

| Propiedad | Caramelo Day | Caramelo Night |
|-----------|--------------|----------------|
| **Fondo principal** | Blanco vainilla (#FFFAF0) | Caramelo quemado (#2D1F1A) |
| **Acentos** | Naranja caramelo (#FF8C00) | Naranja brillante (#FFA500) |
| **Texto principal** | Marrón tostado (#8B4513) | Beige claro (#F5DEB3) |
| **Bordes** | Redondeados amigables | Glow naranja sutil |
| **Botones** | Degradado naranja/dorado | Naranja quemado brillante |
| **Estilo general** | Dulce, amigable, juvenil | Cálido nocturno, festivo |

---

### Reglas de Estilos

* El usuario **elige un estilo** al crear/editar la landing
* El modo día/noche se **alterna con un toggle** o se auto-detecta por hora
* Los estilos afectan: colores, tipografía, bordes, sombras, botones
* **NO** se permite crear estilos personalizados en v1
* **NO** se permite mezclar estilos entre presets

---

## 8. Configuración permitida (simple)

La app **SÍ permite** configurar:

* Textos
* Imágenes
* Colores principales

### Reglas:

* No temas avanzados
* No gradientes complejos
* No sistemas de diseño extensos

La configuración debe sentirse **limitada pero suficiente**.

---

## 9. Filosofía de construcción

* Menos es más
* Cada sección tiene propósito
* El usuario NO debe pensar
* El código debe ser claro

Si dudas entre:

* algo simple
* algo "mejor"

👉 **elige lo simple**.

---

## 10. Qué NO hacer (crítico)

❌ No agregar nuevos presets
❌ No cambiar el orden de secciones
❌ No agregar lógica innecesaria
❌ No reinterpretar las imágenes
❌ No agregar features no pedidos
❌ No crear estilos personalizados fuera de los definidos

❌ No agregar nuevos presets
❌ No cambiar el orden de secciones
❌ No agregar lógica innecesaria
❌ No reinterpretar las imágenes
❌ No agregar features no pedidos

---

## 11. Definición de éxito

La versión 1 está correcta si:

* Se puede crear una landing
* Elegir preset Pyme o Mobile App
* Elegir un estilo visual (ej: Miel Day, Rhodium Night)
* Alternar entre modo día y noche
* Configurar textos, imágenes y colores
* Publicarla
* Se ve bien en móvil

Nada más.

---

## 12. Regla final (OBLIGATORIA)

> Este proyecto prioriza **claridad, límites y estética simple**.
> Si algo no está en este documento, **no existe**.

---

## 13. Preguntas de Clarificación (Q&A)

Antes de iniciar el desarrollo, se realizaron las siguientes preguntas para definir el alcance técnico:

### 13.1 Estado actual del proyecto

**P:** ¿Ya existe código en el repositorio (Vue y .NET) o empezamos desde cero?  
**R:** ✅ Desde cero.

**P:** ¿Qué versión de Vue prefieres? (Vue 2.x o Vue 3.x con Composition API)  
**R:** ✅ La más estable (elegida por IA).

**P:** ¿Qué versión de .NET? (.NET 6, 7, 8?)  
**R:** ✅ La más estable (elegida por IA).

### 13.2 Base de datos

**P:** ¿Qué base de datos usar? (SQL Server, PostgreSQL, MySQL?)  
**R:** ✅ **PostgreSQL**.

**P:** ¿Tienes preferencia sobre el ORM? (Entity Framework Core?)  
**R:** ✅ **Entity Framework Core**.

### 13.3 Arquitectura del Frontend Vue

**P:** ¿El front de Vue será una SPA estática que consume la API de .NET?  
**R:** ✅ Sí, el front será una SPA que consume API.

**P:** ¿Cómo se determina qué landing mostrar? ¿Por subdomain, por slug en la URL, o por ID?  
**R:** ✅ En el MVP, **por ID** simplemente.

### 13.4 Backoffice en .NET

**P:** ¿El backoffice será Razor Pages, Blazor, o una SPA separada (Vue/React)?  
**R:** ✅ **Razor Pages**, dentro del mismo proyecto API.

**P:** ¿Necesitas autenticación de usuarios para el backoffice?  
**R:** ✅ Sí, autenticación para los usuarios del backoffice.

### 13.5 Flujo de publicación

**P:** Cuando mencionas "publicarla" → ¿Es simplemente guardar la configuración en BD, o hay algún proceso de deploy/generación?  
**R:** ✅ Simplemente guardar la configuración en base de datos (de momento).

### 13.6 Preguntas adicionales

**P:** ¿Dónde se guardarán las imágenes que suban los usuarios para sus landings?  
**R:** ✅ **En el servidor API local** (carpeta del proyecto) para este MVP.

**P:** ¿Cada usuario del backoffice puede crear múltiples landings, o es 1 usuario = 1 landing?  
**R:** ✅ Cada usuario puede crear **1 o más landings** (multi-tenancy).

**P:** ¿El usuario final de la landing puede cambiar entre modo día/noche?  
**R:** ✅ Siempre debe poder cambiar entre día y noche, **PERO** debe poder configurarse para que el toggle no exista y sea un color por defecto fijo.

**P:** ¿Idioma del backoffice?  
**R:** ✅ **Español e Inglés** (i18n).

**P:** ¿Configuración de PostgreSQL?  
**R:** ✅ Usar archivo **.env** para la cadena de conexión. El usuario configurará los datos después. Se usará local de momento.

---

## 14. Decisiones Técnicas (Stack v1)

Basándose en las respuestas anteriores, se definen las siguientes tecnologías:

### 14.1 Frontend (landing_maker_front)

| Tecnología | Versión | Justificación |
|------------|---------|---------------|
| **Vue.js** | 3.x (Composition API) | Versión estable, moderno, mejor soporte TypeScript |
| **Vite** | Última estable | Build rápido, hot reload eficiente |
| **TypeScript** | Última estable | Tipado estricto, mejor mantenibilidad |
| **CSS puro o SCSS** | - | Sin frameworks CSS, control total de estilos |

### 14.2 Backend (landing_maker_back)

| Tecnología | Versión | Justificación |
|------------|---------|---------------|
| **.NET** | 8.x LTS | Última versión LTS, alto rendimiento |
| **ASP.NET Core Web API** | 8.x | API RESTful para el frontend |
| **Razor Pages** | 8.x | Backoffice integrado en el mismo proyecto |
| **Entity Framework Core** | 8.x | ORM oficial, Code-First migrations |

### 14.3 Base de Datos

| Tecnología | Justificación |
|------------|---------------|
| **PostgreSQL** | Open source, robusto, excelente para JSON |

### 14.4 Autenticación

| Aspecto | Decisión |
|---------|----------|
| **Backoffice** | ASP.NET Core Identity con cookies |
| **Frontend público** | Sin autenticación (landings públicas) |

### 14.5 Estructura de Carpetas Propuesta

```
landing_maker/
├── landing_maker_front/        # Vue 3 SPA (landings públicas)
│   ├── src/
│   │   ├── components/
│   │   ├── presets/            # Componentes por preset
│   │   │   ├── MobileApp/
│   │   │   └── Pyme/
│   │   ├── styles/             # Temas day/night por estilo
│   │   ├── services/           # API calls
│   │   └── App.vue
│   └── docs/
│       └── prompts/
│           └── images/
│
└── landing_maker_back/         # .NET 8 API + Backoffice
    ├── Controllers/            # API endpoints
    ├── Pages/                  # Razor Pages (backoffice)
    ├── Models/                 # Entidades
    ├── Data/                   # DbContext, Migrations
    └── Services/
```

---

## 15. Referencias Visuales Confirmadas

Las siguientes imágenes fueron revisadas y confirmadas como referencia obligatoria:

### Estilo Silver Day / Rhodium Night
- Interfaz metálica con bordes biselados 3D
- Acentos dorados sobre fondos plateados (day) o grises oscuros (night)
- Botones con degradado y sombras

### Preset Mobile App (Shazam-like)
- Hero con fondo azul vibrante
- Mockups de teléfono prominentes
- Tipografía grande y limpia
- Footer oscuro con links organizados

### Preset Pyme (Mielería)
- Colores cálidos ámbar/amarillo
- Ilustraciones amigables (abeja, camión)
- Cards de productos con bordes suaves
- Estilo artesanal y confiable
