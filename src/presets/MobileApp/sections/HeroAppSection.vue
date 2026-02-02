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
  <section class="hero-app-section">
    <div class="hero-container">
      <div class="hero-content">
        <h1 class="app-name">{{ config.appName || 'Mi App' }}</h1>
        <p class="app-tagline">{{ config.tagline || 'Una frase que describe tu app' }}</p>
        <a 
          :href="config.ctaUrl || '#'" 
          class="download-btn"
        >
          {{ config.ctaText || 'Descargar Ahora' }}
        </a>
      </div>
      
      <div class="phone-mockup">
        <div class="phone-frame">
          <div class="phone-screen" v-if="config.heroImage">
            <img :src="config.heroImage" alt="App screenshot" />
          </div>
          <div class="phone-screen phone-placeholder" v-else>
            <span class="app-icon">📱</span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.hero-app-section {
  min-height: 90vh;
  display: flex;
  align-items: center;
  padding: 2rem;
  background: var(--bg-gradient);
}

.hero-container {
  max-width: 1200px;
  margin: 0 auto;
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  align-items: center;
}

.hero-content {
  padding-right: 2rem;
}

.app-name {
  font-size: 4rem;
  font-weight: 800;
  margin-bottom: 1rem;
  line-height: 1.1;
  color: var(--text-primary);
}

.app-tagline {
  font-size: 1.5rem;
  color: var(--text-secondary);
  margin-bottom: 2.5rem;
  line-height: 1.5;
}

.download-btn {
  display: inline-block;
  padding: 1.25rem 3rem;
  background: var(--button-gradient, var(--accent));
  color: white;
  text-decoration: none;
  border-radius: 12px;
  font-weight: 700;
  font-size: 1.2rem;
  transition: all 0.3s ease;
  box-shadow: var(--shadow);
  border: 2px solid var(--accent);
}

.download-btn:hover {
  background: var(--accent-hover);
  transform: translateY(-3px);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
}

/* Phone Mockup */
.phone-mockup {
  display: flex;
  justify-content: center;
}

.phone-frame {
  width: 280px;
  height: 580px;
  background: var(--card-bg, #1a1a1a);
  border-radius: 40px;
  padding: 12px;
  box-shadow: var(--shadow);
  border: 3px solid var(--border-color);
}

.phone-screen {
  width: 100%;
  height: 100%;
  background: var(--bg-secondary);
  border-radius: 32px;
  overflow: hidden;
}

.phone-screen img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.phone-placeholder {
  display: flex;
  align-items: center;
  justify-content: center;
}

.app-icon {
  font-size: 5rem;
}

/* Silver/Rhodium specific bevel effect */
.style-silverrhodium .phone-frame {
  border: 4px solid;
  border-color: var(--bevel-light) var(--bevel-dark) var(--bevel-dark) var(--bevel-light);
}

.style-silverrhodium .download-btn {
  border: 3px solid;
  border-color: var(--bevel-light) var(--bevel-dark) var(--bevel-dark) var(--bevel-light);
}

/* Responsive */
@media (max-width: 768px) {
  .hero-container {
    grid-template-columns: 1fr;
    gap: 2rem;
    text-align: center;
  }
  
  .hero-content {
    padding-right: 0;
    order: 1;
  }
  
  .phone-mockup {
    order: 0;
  }
  
  .app-name {
    font-size: 2.5rem;
  }
  
  .app-tagline {
    font-size: 1.1rem;
  }
  
  .phone-frame {
    width: 220px;
    height: 450px;
  }
}
</style>
