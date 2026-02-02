<script setup>
defineProps({
  isDark: Boolean
})

defineEmits(['toggle'])
</script>

<template>
  <button 
    class="theme-toggle" 
    @click="$emit('toggle')"
    :aria-label="isDark ? 'Cambiar a modo día' : 'Cambiar a modo noche'"
    :title="isDark ? 'Modo día' : 'Modo noche'"
  >
    <span class="toggle-icon">{{ isDark ? '☀️' : '🌙' }}</span>
  </button>
</template>

<style scoped>
.theme-toggle {
  position: fixed;
  bottom: 2rem;
  right: 2rem;
  width: 56px;
  height: 56px;
  border-radius: 50%;
  border: none;
  background: rgba(255, 255, 255, 0.9);
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.15);
  cursor: pointer;
  z-index: 1000;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
  display: flex;
  align-items: center;
  justify-content: center;
}

.theme-toggle:hover {
  transform: scale(1.1);
  box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
}

.toggle-icon {
  font-size: 1.5rem;
}

/* Dark mode styles */
:global(.theme-night) .theme-toggle {
  background: rgba(30, 30, 30, 0.9);
}
</style>
