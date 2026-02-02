<script setup>
defineProps({
  config: {
    type: Object,
    default: () => ({})
  },
  isDark: Boolean
})
</script>

<template>
  <section class="cta-section">
    <div class="cta-container">
      <h2 class="cta-title">{{ config.title || '¿Listo para comenzar?' }}</h2>
      <p class="cta-subtitle">{{ config.subtitle || 'Descarga la app ahora' }}</p>
      <a 
        :href="config.buttonUrl || '#'" 
        class="cta-button"
      >
        {{ config.buttonText || 'Descargar' }}
      </a>
    </div>
  </section>
</template>

<style scoped>
.cta-section {
  padding: 6rem 2rem;
  background: var(--bg-secondary);
  text-align: center;
}

.cta-container {
  max-width: 700px;
  margin: 0 auto;
}

.cta-title {
  font-size: 3rem;
  margin-bottom: 1rem;
  color: var(--text-primary);
}

.cta-subtitle {
  font-size: 1.25rem;
  color: var(--text-secondary);
  margin-bottom: 2.5rem;
}

.cta-button {
  display: inline-block;
  padding: 1.25rem 4rem;
  background: var(--accent);
  color: white;
  text-decoration: none;
  border-radius: 12px;
  font-weight: 700;
  font-size: 1.3rem;
  transition: all 0.3s ease;
  box-shadow: var(--shadow);
}

.cta-button:hover {
  background: var(--accent-hover);
  transform: translateY(-3px);
}

/* Silver/Rhodium bevel */
.style-silverrhodium .cta-button {
  background: var(--button-gradient);
  border: 3px solid;
  border-color: var(--bevel-light) var(--bevel-dark) var(--bevel-dark) var(--bevel-light);
}

/* Tecno Terminal */
.style-tecnoterminal .cta-button {
  border-radius: 0;
  border: 2px solid var(--accent);
  background: transparent;
  color: var(--accent);
}

.style-tecnoterminal .cta-button:hover {
  background: var(--accent);
  color: var(--bg-primary);
}

/* Responsive */
@media (max-width: 768px) {
  .cta-title {
    font-size: 2rem;
  }
  
  .cta-button {
    padding: 1rem 2.5rem;
    font-size: 1.1rem;
  }
}
</style>
