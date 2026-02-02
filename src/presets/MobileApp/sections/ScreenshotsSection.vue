<script setup>
import { computed } from 'vue'

const props = defineProps({
  config: {
    type: Object,
    default: () => ({})
  },
  isDark: Boolean
})

const images = computed(() => props.config.images || [])
const hasImages = computed(() => images.value.length > 0)
</script>

<template>
  <section class="screenshots-section" v-if="hasImages || true">
    <div class="screenshots-container">
      <h2 class="screenshots-title">{{ config.title || 'Descubre la App' }}</h2>
      
      <div class="screenshots-wrapper" v-if="hasImages">
        <div 
          class="screenshot-item" 
          v-for="(image, index) in images" 
          :key="index"
        >
          <div class="screenshot-phone">
            <img :src="image" :alt="`Screenshot ${index + 1}`" />
          </div>
        </div>
      </div>
      
      <!-- Placeholder when no images -->
      <div class="screenshots-placeholder" v-else>
        <div class="screenshot-item">
          <div class="screenshot-phone placeholder">
            <span>📸</span>
          </div>
        </div>
        <div class="screenshot-item">
          <div class="screenshot-phone placeholder">
            <span>📱</span>
          </div>
        </div>
        <div class="screenshot-item">
          <div class="screenshot-phone placeholder">
            <span>✨</span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.screenshots-section {
  padding: 6rem 2rem;
  background: var(--bg-primary);
}

.screenshots-container {
  max-width: 1200px;
  margin: 0 auto;
  text-align: center;
}

.screenshots-title {
  font-size: 2.5rem;
  margin-bottom: 4rem;
  color: var(--text-primary);
}

.screenshots-wrapper,
.screenshots-placeholder {
  display: flex;
  justify-content: center;
  gap: 2rem;
  flex-wrap: wrap;
}

.screenshot-item {
  flex: 0 0 auto;
}

.screenshot-phone {
  width: 200px;
  height: 420px;
  background: var(--card-bg, #1a1a1a);
  border-radius: 30px;
  padding: 8px;
  box-shadow: var(--shadow);
  border: 2px solid var(--border-color);
  overflow: hidden;
}

.screenshot-phone img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 24px;
}

.screenshot-phone.placeholder {
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 3rem;
  background: var(--bg-secondary);
}

/* Silver/Rhodium bevel */
.style-silverrhodium .screenshot-phone {
  border: 3px solid;
  border-color: var(--bevel-light) var(--bevel-dark) var(--bevel-dark) var(--bevel-light);
}

/* Responsive */
@media (max-width: 768px) {
  .screenshots-title {
    font-size: 1.75rem;
  }
  
  .screenshots-wrapper,
  .screenshots-placeholder {
    gap: 1rem;
  }
  
  .screenshot-phone {
    width: 140px;
    height: 300px;
  }
}
</style>
