<script setup>
defineProps({
  config: {
    type: Object,
    default: () => ({})
  },
  isDark: Boolean
})

// WhatsApp link generator
const getWhatsAppLink = (phone) => {
  const cleanPhone = phone?.replace(/\D/g, '') || ''
  return `https://wa.me/${cleanPhone}`
}
</script>

<template>
  <section id="contacto" class="contact-section">
    <div class="contact-container">
      <h2 class="contact-title">{{ config.title || 'Contáctanos' }}</h2>
      
      <div class="contact-grid">
        <!-- Phone -->
        <a 
          v-if="config.phone" 
          :href="`tel:${config.phone}`" 
          class="contact-card"
        >
          <span class="contact-icon">📞</span>
          <span class="contact-label">Teléfono</span>
          <span class="contact-value">{{ config.phone }}</span>
        </a>
        
        <!-- WhatsApp -->
        <a 
          v-if="config.whatsapp" 
          :href="getWhatsAppLink(config.whatsapp)" 
          target="_blank"
          class="contact-card whatsapp"
        >
          <span class="contact-icon">💬</span>
          <span class="contact-label">WhatsApp</span>
          <span class="contact-value">Escríbenos</span>
        </a>
        
        <!-- Email -->
        <a 
          v-if="config.email" 
          :href="`mailto:${config.email}`" 
          class="contact-card"
        >
          <span class="contact-icon">✉️</span>
          <span class="contact-label">Email</span>
          <span class="contact-value">{{ config.email }}</span>
        </a>
        
        <!-- Address -->
        <div v-if="config.address" class="contact-card">
          <span class="contact-icon">📍</span>
          <span class="contact-label">Dirección</span>
          <span class="contact-value">{{ config.address }}</span>
        </div>
      </div>
      
      <!-- Footer -->
      <footer class="pyme-footer">
        <p>© {{ new Date().getFullYear() }} {{ config.businessName || 'Mi Negocio' }}. Todos los derechos reservados.</p>
      </footer>
    </div>
  </section>
</template>

<style scoped>
.contact-section {
  padding: 5rem 2rem;
  background: var(--bg-primary);
}

.contact-container {
  max-width: 1000px;
  margin: 0 auto;
  text-align: center;
}

.contact-title {
  font-size: 2.5rem;
  margin-bottom: 3rem;
  color: var(--text-primary);
}

.contact-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 1.5rem;
  margin-bottom: 4rem;
}

.contact-card {
  background: var(--card-bg);
  padding: 2rem 1.5rem;
  border-radius: 16px;
  box-shadow: var(--shadow);
  text-decoration: none;
  color: inherit;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 0.5rem;
  transition: transform 0.3s ease;
}

.contact-card:hover {
  transform: translateY(-4px);
}

.contact-card.whatsapp {
  background: #25D366;
  color: white;
}

.contact-icon {
  font-size: 2.5rem;
}

.contact-label {
  font-size: 0.875rem;
  opacity: 0.8;
}

.contact-value {
  font-weight: 600;
  font-size: 1rem;
}

.pyme-footer {
  padding-top: 2rem;
  border-top: 1px solid var(--border-color);
  color: var(--text-secondary);
  font-size: 0.9rem;
}

/* Responsive */
@media (max-width: 768px) {
  .contact-title {
    font-size: 1.75rem;
  }
  
  .contact-grid {
    grid-template-columns: 1fr 1fr;
  }
}
</style>
