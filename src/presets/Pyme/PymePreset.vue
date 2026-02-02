<script setup>
import { computed } from 'vue'
import HeroSection from './sections/HeroSection.vue'
import AboutSection from './sections/AboutSection.vue'
import ProductsSection from './sections/ProductsSection.vue'
import ContactSection from './sections/ContactSection.vue'

const props = defineProps({
  landing: {
    type: Object,
    required: true
  },
  isDark: {
    type: Boolean,
    default: false
  }
})

// Parse sections from landing data
const getSectionConfig = (sectionType) => {
  const section = props.landing.sections?.find(s => s.sectionType === sectionType)
  if (section?.config) {
    try {
      return JSON.parse(section.config)
    } catch {
      return {}
    }
  }
  return {}
}

const heroConfig = computed(() => getSectionConfig('hero'))
const aboutConfig = computed(() => getSectionConfig('about'))
const productsConfig = computed(() => getSectionConfig('products'))
const contactConfig = computed(() => getSectionConfig('contact'))

// Style class based on styleType and theme
const styleClass = computed(() => {
  const style = props.landing.styleType?.toLowerCase() || 'miel'
  const mode = props.isDark ? 'night' : 'day'
  return `preset-pyme style-${style} theme-${mode}`
})
</script>

<template>
  <div :class="styleClass">
    <HeroSection :config="heroConfig" :isDark="isDark" />
    <AboutSection :config="aboutConfig" :isDark="isDark" />
    <ProductsSection :config="productsConfig" :isDark="isDark" />
    <ContactSection :config="contactConfig" :isDark="isDark" />
  </div>
</template>

<style>
/* Preset Pyme Base Styles */
.preset-pyme {
  font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
  min-height: 100vh;
  transition: background-color 0.3s ease, color 0.3s ease;
}

/* ============================================
   ESTILO MIEL
   ============================================ */

/* Miel Day */
.style-miel.theme-day {
  --bg-primary: #FFF8DC;
  --bg-secondary: #FFFACD;
  --accent: #FFBF00;
  --accent-hover: #E6AC00;
  --text-primary: #5D4037;
  --text-secondary: #795548;
  --border-color: #DEB887;
  --card-bg: #FFFFFF;
  --shadow: 0 4px 15px rgba(139, 69, 19, 0.1);
}

/* Miel Night */
.style-miel.theme-night {
  --bg-primary: #3D2914;
  --bg-secondary: #2D1F10;
  --accent: #FFD700;
  --accent-hover: #FFC107;
  --text-primary: #FFF8DC;
  --text-secondary: #DEB887;
  --border-color: #6D4C41;
  --card-bg: #4E342E;
  --shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
}

/* ============================================
   ESTILO CHOCOLATE
   ============================================ */

/* Chocolate Day */
.style-chocolate.theme-day {
  --bg-primary: #F5F5DC;
  --bg-secondary: #FAEBD7;
  --accent: #7B3F00;
  --accent-hover: #8B4513;
  --text-primary: #3E2723;
  --text-secondary: #5D4037;
  --border-color: #D2B48C;
  --card-bg: #FFFFFF;
  --shadow: 0 4px 15px rgba(62, 39, 35, 0.1);
}

/* Chocolate Night */
.style-chocolate.theme-night {
  --bg-primary: #1B0F00;
  --bg-secondary: #2D1F10;
  --accent: #D2691E;
  --accent-hover: #E67E22;
  --text-primary: #FAEBD7;
  --text-secondary: #DEB887;
  --border-color: #6D4C41;
  --card-bg: #3E2723;
  --shadow: 0 4px 15px rgba(0, 0, 0, 0.4);
}

/* ============================================
   ESTILO CARAMELO
   ============================================ */

/* Caramelo Day */
.style-caramelo.theme-day {
  --bg-primary: #FFFAF0;
  --bg-secondary: #FFF5E6;
  --accent: #FF8C00;
  --accent-hover: #E67E00;
  --text-primary: #8B4513;
  --text-secondary: #A0522D;
  --border-color: #FFDAB9;
  --card-bg: #FFFFFF;
  --shadow: 0 4px 15px rgba(255, 140, 0, 0.1);
}

/* Caramelo Night */
.style-caramelo.theme-night {
  --bg-primary: #2D1F1A;
  --bg-secondary: #3D2A20;
  --accent: #FFA500;
  --accent-hover: #FFB347;
  --text-primary: #F5DEB3;
  --text-secondary: #DEB887;
  --border-color: #8B4513;
  --card-bg: #4A3728;
  --shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
}

/* Apply CSS Variables */
.preset-pyme {
  background-color: var(--bg-primary);
  color: var(--text-primary);
}
</style>
