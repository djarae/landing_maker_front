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
  <section class="about-section">
    <div class="about-container">
      <div class="about-image" v-if="config.image">
        <img :src="config.image" alt="Sobre nosotros" />
      </div>
      <div class="about-image about-placeholder" v-else>
        <span>🌿</span>
      </div>
      <div class="about-content">
        <h2 class="about-title">{{ config.title || 'Sobre Nosotros' }}</h2>
        <p class="about-description">
          {{ config.description || 'Somos un negocio dedicado a ofrecer productos de la más alta calidad. Nuestro compromiso es brindarte una experiencia excepcional.' }}
        </p>
      </div>
    </div>
  </section>
</template>

<style scoped>
.about-section {
  padding: 5rem 2rem;
  background: var(--bg-primary);
}

.about-container {
  max-width: 1200px;
  margin: 0 auto;
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  align-items: center;
}

.about-image img {
  width: 100%;
  border-radius: 16px;
  box-shadow: var(--shadow);
}

.about-placeholder {
  aspect-ratio: 4/3;
  background: var(--bg-secondary);
  border-radius: 16px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 5rem;
}

.about-title {
  font-size: 2.5rem;
  margin-bottom: 1.5rem;
  color: var(--text-primary);
}

.about-description {
  font-size: 1.1rem;
  line-height: 1.8;
  color: var(--text-secondary);
}

/* Responsive */
@media (max-width: 768px) {
  .about-container {
    grid-template-columns: 1fr;
    gap: 2rem;
    text-align: center;
  }
  
  .about-title {
    font-size: 1.75rem;
  }
  
  .about-placeholder {
    font-size: 3rem;
    max-width: 250px;
    margin: 0 auto;
  }
}
</style>
