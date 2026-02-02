<script setup>
import { computed } from 'vue'
import HeroAppSection from './sections/HeroAppSection.vue'
import FeaturesSection from './sections/FeaturesSection.vue'
import ScreenshotsSection from './sections/ScreenshotsSection.vue'
import CtaSection from './sections/CtaSection.vue'
import FooterSection from './sections/FooterSection.vue'

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
const featuresConfig = computed(() => getSectionConfig('features'))
const screenshotsConfig = computed(() => getSectionConfig('screenshots'))
const ctaConfig = computed(() => getSectionConfig('cta'))
const footerConfig = computed(() => getSectionConfig('footer'))

// Style class based on styleType and theme
const styleClass = computed(() => {
  const style = props.landing.styleType?.toLowerCase() || 'silverrhodium'
  const mode = props.isDark ? 'night' : 'day'
  return `preset-mobile style-${style} theme-${mode}`
})
</script>

<template>
  <div :class="styleClass">
    <HeroAppSection :config="heroConfig" :isDark="isDark" />
    <FeaturesSection :config="featuresConfig" :isDark="isDark" />
    <ScreenshotsSection :config="screenshotsConfig" :isDark="isDark" />
    <CtaSection :config="ctaConfig" :isDark="isDark" />
    <FooterSection :config="footerConfig" :isDark="isDark" />
  </div>
</template>

<style>
/* Preset Mobile App Base Styles */
.preset-mobile {
  font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
  min-height: 100vh;
  transition: background-color 0.3s ease, color 0.3s ease;
}

/* ============================================
   ESTILO SILVER/RHODIUM
   ============================================ */

/* Silver Day (Metagross Shiny Inspired) */
.style-silverrhodium.theme-day {
  --bg-primary: #F0F2F5; /* Plata muy claro casi blanco */
  --bg-secondary: #E0E4E8;
  --bg-gradient: linear-gradient(135deg, #F5F7FA 0%, #C3CFE2 100%);
  
  /* Dorado Metagross Shiny: Amarillo oro intenso y brillante */
  --accent: #FFD700;  /* Gold puro */
  --accent-hover: #FFC000; /* Un poco más oscuro al hover */
  
  --text-primary: #2C3E50; /* Azul acero oscuro para contraste */
  --text-secondary: #5D6D7E;
  
  --card-bg: rgba(255, 255, 255, 0.8);
  --border-color: #BDC3C7;
  --shadow: 0 8px 32px rgba(31, 38, 135, 0.1);
  
  /* Gradiente para botones dorados metálicos */
  --button-gradient: linear-gradient(135deg, #FFD700 0%, #FDB931 50%, #FFD700 100%);
  
  --bevel-light: #FFFFFF;
  --bevel-dark: #B0B0B0;
}

/* Rhodium Night */
.style-silverrhodium.theme-night {
  --bg-primary: #1A1A2E;
  --bg-secondary: #16213E;
  --bg-gradient: linear-gradient(135deg, #1A1A2E 0%, #16213E 100%);
  --accent: #FFD700;
  --accent-hover: #FFC107;
  --text-primary: #FAF0E6;
  --text-secondary: #C0C0C0;
  --card-bg: linear-gradient(145deg, #25254A, #1E1E3A);
  --border-color: #4A4A6A;
  --shadow: 0 4px 25px rgba(0, 0, 0, 0.4);
  --button-gradient: linear-gradient(135deg, #B8860B, #8B6914);
  --bevel-light: #3A3A5A;
  --bevel-dark: #0A0A1E;
}

/* ============================================
   ESTILO MODERNO SIMPLE
   ============================================ */

/* Moderno Day */
.style-modernosimple.theme-day {
  --bg-primary: #FFFFFF;
  --bg-secondary: #F8F9FA;
  --bg-gradient: linear-gradient(135deg, #FFFFFF 0%, #F0F0F0 100%);
  --accent: #0066FF;
  --accent-hover: #0052CC;
  --text-primary: #333333;
  --text-secondary: #666666;
  --card-bg: #FFFFFF;
  --border-color: #E0E0E0;
  --shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
  --button-gradient: none;
  --bevel-light: none;
  --bevel-dark: none;
}

/* Moderno Night */
.style-modernosimple.theme-night {
  --bg-primary: #121212;
  --bg-secondary: #1E1E1E;
  --bg-gradient: linear-gradient(135deg, #121212 0%, #1A1A1A 100%);
  --accent: #00D4FF;
  --accent-hover: #00B8E6;
  --text-primary: #FFFFFF;
  --text-secondary: #A0A0A0;
  --card-bg: #1E1E1E;
  --border-color: #333333;
  --shadow: 0 2px 15px rgba(0, 212, 255, 0.1);
  --button-gradient: none;
  --bevel-light: none;
  --bevel-dark: none;
}

/* ============================================
   ESTILO TECNO TERMINAL
   ============================================ */

/* Tecno Day */
.style-tecnoterminal.theme-day {
  --bg-primary: #F5F5F5;
  --bg-secondary: #E8E8E8;
  --bg-gradient: linear-gradient(135deg, #F5F5F5 0%, #E0E0E0 100%);
  --accent: #00AA00;
  --accent-hover: #008800;
  --text-primary: #1E1E1E;
  --text-secondary: #4A4A4A;
  --card-bg: #FFFFFF;
  --border-color: #00AA00;
  --shadow: 0 2px 10px rgba(0, 170, 0, 0.1);
  --button-gradient: none;
  --font-mono: 'Fira Code', 'JetBrains Mono', 'Consolas', monospace;
}

/* Tecno Night */
.style-tecnoterminal.theme-night {
  --bg-primary: #0D0D0D;
  --bg-secondary: #1A1A1A;
  --bg-gradient: linear-gradient(135deg, #0D0D0D 0%, #0A0A0A 100%);
  --accent: #00FF41;
  --accent-hover: #00CC33;
  --text-primary: #33FF33;
  --text-secondary: #00AA00;
  --card-bg: #0A0A0A;
  --border-color: #00FF41;
  --shadow: 0 0 20px rgba(0, 255, 65, 0.2);
  --button-gradient: none;
  --font-mono: 'Fira Code', 'JetBrains Mono', 'Consolas', monospace;
}

/* Apply CSS Variables */
.preset-mobile {
  background: var(--bg-gradient, var(--bg-primary));
  color: var(--text-primary);
}

/* Tecno Terminal font override */
.style-tecnoterminal {
  font-family: var(--font-mono, monospace);
}
</style>
