<script setup>
import { computed } from 'vue'

const props = defineProps({
  config: {
    type: Object,
    default: () => ({})
  },
  isDark: Boolean
})

const links = computed(() => {
  return props.config.links || [
    { label: 'Privacidad', url: '#' },
    { label: 'Términos', url: '#' }
  ]
})
</script>

<template>
  <footer class="app-footer">
    <div class="footer-container">
      <div class="footer-links">
        <a 
          v-for="(link, index) in links" 
          :key="index"
          :href="link.url"
          class="footer-link"
        >
          {{ link.label }}
        </a>
      </div>
      
      <p class="footer-copyright">
        {{ config.copyright || `© ${new Date().getFullYear()} Mi App. Todos los derechos reservados.` }}
      </p>
    </div>
  </footer>
</template>

<style scoped>
.app-footer {
  padding: 3rem 2rem;
  background: var(--bg-primary);
  border-top: 1px solid var(--border-color);
}

.footer-container {
  max-width: 1200px;
  margin: 0 auto;
  text-align: center;
}

.footer-links {
  display: flex;
  justify-content: center;
  gap: 2rem;
  margin-bottom: 1.5rem;
  flex-wrap: wrap;
}

.footer-link {
  color: var(--text-secondary);
  text-decoration: none;
  font-size: 0.95rem;
  transition: color 0.2s ease;
}

.footer-link:hover {
  color: var(--accent);
}

.footer-copyright {
  color: var(--text-secondary);
  font-size: 0.875rem;
  opacity: 0.8;
}

/* Responsive */
@media (max-width: 768px) {
  .footer-links {
    gap: 1rem;
  }
}
</style>
