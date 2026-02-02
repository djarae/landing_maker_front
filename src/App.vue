<script setup>
import { ref, provide, computed } from 'vue'

// Theme state (day/night)
const isDarkMode = ref(false)

const toggleTheme = () => {
  isDarkMode.value = !isDarkMode.value
}

// Provide theme to all children
provide('isDarkMode', isDarkMode)
provide('toggleTheme', toggleTheme)

const themeClass = computed(() => isDarkMode.value ? 'theme-night' : 'theme-day')
</script>

<template>
  <div id="landing-app" :class="themeClass">
    <RouterView />
  </div>
</template>

<style>
#landing-app {
  min-height: 100vh;
  transition: background-color 0.3s ease, color 0.3s ease;
}
</style>
