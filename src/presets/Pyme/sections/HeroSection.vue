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
  <section class="hero-section">
    <div class="hero-container">
      <div class="hero-content">
        <h1 class="hero-title">{{ config.businessName || 'Mi Negocio' }}</h1>
        <p class="hero-tagline">{{ config.tagline || 'Los mejores productos para ti' }}</p>
        <a 
          :href="config.ctaUrl || '#contacto'" 
          class="hero-cta"
        >
          {{ config.ctaText || 'Contáctanos' }}
        </a>
      </div>
      <div class="hero-image" v-if="config.heroImage">
        <img :src="config.heroImage" :alt="config.businessName" />
      </div>
      <div class="hero-image hero-placeholder" v-else>
        <span>🏪</span>
      </div>
    </div>
  </section>
</template>

<style scoped>
.hero-section {
  min-height: 80vh;
  display: flex;
  align-items: center;
  padding: 2rem;
  background: var(--bg-secondary);
}

.hero-container {
  max-width: 1200px;
  margin: 0 auto;
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  align-items: center;
}

.hero-title {
  font-size: 3rem;
  font-weight: 700;
  margin-bottom: 1rem;
  line-height: 1.2;
  color: var(--text-primary);
}

.hero-tagline {
  font-size: 1.25rem;
  color: var(--text-secondary);
  margin-bottom: 2rem;
  line-height: 1.6;
}

.hero-cta {
  display: inline-block;
  padding: 1rem 2.5rem;
  background: var(--accent);
  color: white;
  text-decoration: none;
  border-radius: 50px;
  font-weight: 600;
  font-size: 1.1rem;
  transition: all 0.3s ease;
  box-shadow: var(--shadow);
}

.hero-cta:hover {
  background: var(--accent-hover);
  transform: translateY(-2px);
}

.hero-image img {
  width: 100%;
  max-width: 500px;
  border-radius: 16px;
  box-shadow: var(--shadow);
}

.hero-placeholder {
  width: 100%;
  max-width: 500px;
  aspect-ratio: 4/3;
  background: var(--card-bg);
  border-radius: 16px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 6rem;
  box-shadow: var(--shadow);
}

/* Responsive */
@media (max-width: 768px) {
  .hero-container {
    grid-template-columns: 1fr;
    gap: 2rem;
    text-align: center;
  }
  
  .hero-title {
    font-size: 2rem;
  }
  
  .hero-image {
    order: -1;
  }
  
  .hero-placeholder {
    max-width: 300px;
    margin: 0 auto;
    font-size: 4rem;
  }
}
</style>
