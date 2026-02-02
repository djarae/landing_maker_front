<script setup>
import { ref, onMounted, computed, provide } from 'vue'
import { useRoute } from 'vue-router'
import { getLandingById } from '../services/api'

// Presets components
import MobileAppPreset from '../presets/MobileApp/MobileAppPreset.vue'
import PymePreset from '../presets/Pyme/PymePreset.vue'
import ThemeToggle from '../components/ThemeToggle.vue'
import LoadingSpinner from '../components/LoadingSpinner.vue'
import ErrorMessage from '../components/ErrorMessage.vue'

const route = useRoute()

const landing = ref(null)
const loading = ref(true)
const error = ref(null)
const isDarkMode = ref(false)

// Get landing ID from query param
const landingId = computed(() => route.query.id)

// Toggle theme
const toggleTheme = () => {
  isDarkMode.value = !isDarkMode.value
}

// Check if theme toggle should be shown
const showThemeToggle = computed(() => {
  if (!landing.value) return false
  return landing.value.themeMode === 'Toggle'
})

// Preset component to render
const presetComponent = computed(() => {
  if (!landing.value) return null
  return landing.value.presetType === 'MobileApp' ? MobileAppPreset : PymePreset
})

// Provide theme to children
provide('isDarkMode', isDarkMode)
provide('styleType', computed(() => landing.value?.styleType || 'Miel'))

onMounted(async () => {
  if (!landingId.value) {
    error.value = 'No se especificó ID de landing. Usa ?id=1 en la URL.'
    loading.value = false
    return
  }
  
  try {
    const response = await getLandingById(landingId.value)
    landing.value = response
    
    // Set initial theme based on themeMode
    if (landing.value.themeMode === 'NightOnly') {
      isDarkMode.value = true
    }
  } catch (err) {
    error.value = err.message || 'Error al cargar la landing'
  } finally {
    loading.value = false
  }
})
</script>

<template>
  <div class="landing-container">
    <!-- Loading -->
    <LoadingSpinner v-if="loading" />
    
    <!-- Error -->
    <ErrorMessage v-else-if="error" :message="error" />
    
    <!-- Landing Content -->
    <template v-else-if="landing">
      <!-- Theme Toggle -->
      <ThemeToggle 
        v-if="showThemeToggle" 
        :isDark="isDarkMode" 
        @toggle="toggleTheme" 
      />
      
      <!-- Dynamic Preset -->
      <component 
        :is="presetComponent" 
        :landing="landing" 
        :isDark="isDarkMode"
      />
    </template>
  </div>
</template>

<style scoped>
.landing-container {
  min-height: 100vh;
}
</style>
