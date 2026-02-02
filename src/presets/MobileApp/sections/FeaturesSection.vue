<script setup>
import { computed } from 'vue'

const props = defineProps({
  config: {
    type: Object,
    default: () => ({})
  },
  isDark: Boolean
})

const features = computed(() => {
  return props.config.features || [
    { icon: '⚡', title: 'Rápida', description: 'Rendimiento optimizado' },
    { icon: '🔒', title: 'Segura', description: 'Datos protegidos' },
    { icon: '✨', title: 'Fácil', description: 'Interfaz intuitiva' }
  ]
})
</script>

<template>
  <section class="features-section">
    <div class="features-container">
      <h2 class="features-title">{{ config.title || 'Características' }}</h2>
      
      <div class="features-grid">
        <div 
          class="feature-card" 
          v-for="(feature, index) in features" 
          :key="index"
        >
          <span class="feature-icon">{{ feature.icon }}</span>
          <h3 class="feature-title">{{ feature.title }}</h3>
          <p class="feature-description">{{ feature.description }}</p>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.features-section {
  padding: 6rem 2rem;
  background: var(--bg-secondary);
}

.features-container {
  max-width: 1200px;
  margin: 0 auto;
  text-align: center;
}

.features-title {
  font-size: 2.5rem;
  margin-bottom: 4rem;
  color: var(--text-primary);
}

.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 2rem;
}

.feature-card {
  background: var(--card-bg);
  padding: 2.5rem 2rem;
  border-radius: 20px;
  box-shadow: var(--shadow);
  transition: transform 0.3s ease;
  border: 1px solid var(--border-color);
}

.feature-card:hover {
  transform: translateY(-8px);
}

.feature-icon {
  font-size: 3rem;
  display: block;
  margin-bottom: 1rem;
}

.feature-title {
  font-size: 1.5rem;
  margin-bottom: 0.75rem;
  color: var(--text-primary);
}

.feature-description {
  color: var(--text-secondary);
  line-height: 1.6;
}

/* Silver/Rhodium bevel effect */
.style-silverrhodium .feature-card {
  border: 3px solid;
  border-color: var(--bevel-light) var(--bevel-dark) var(--bevel-dark) var(--bevel-light);
}

/* Tecno Terminal style */
.style-tecnoterminal .feature-card {
  border: 1px solid var(--accent);
  border-radius: 4px;
}

.style-tecnoterminal .feature-title::before {
  content: '> ';
  color: var(--accent);
}

/* Responsive */
@media (max-width: 768px) {
  .features-title {
    font-size: 1.75rem;
  }
  
  .features-grid {
    grid-template-columns: 1fr;
  }
}
</style>
