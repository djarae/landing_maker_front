<script setup>
import { computed } from 'vue'

const props = defineProps({
  config: {
    type: Object,
    default: () => ({})
  },
  isDark: Boolean
})

const products = computed(() => {
  return props.config.products || [
    { name: 'Producto 1', price: '$10.00', image: '' },
    { name: 'Producto 2', price: '$15.00', image: '' },
    { name: 'Producto 3', price: '$20.00', image: '' }
  ]
})
</script>

<template>
  <section class="products-section">
    <div class="products-container">
      <h2 class="products-title">{{ config.title || 'Nuestros Productos' }}</h2>
      
      <div class="products-grid">
        <div 
          class="product-card" 
          v-for="(product, index) in products" 
          :key="index"
        >
          <div class="product-image" v-if="product.image">
            <img :src="product.image" :alt="product.name" />
          </div>
          <div class="product-image product-placeholder" v-else>
            <span>🍯</span>
          </div>
          <div class="product-info">
            <h3 class="product-name">{{ product.name }}</h3>
            <p class="product-price" v-if="product.price">{{ product.price }}</p>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.products-section {
  padding: 5rem 2rem;
  background: var(--bg-secondary);
}

.products-container {
  max-width: 1200px;
  margin: 0 auto;
}

.products-title {
  font-size: 2.5rem;
  text-align: center;
  margin-bottom: 3rem;
  color: var(--text-primary);
}

.products-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 2rem;
}

.product-card {
  background: var(--card-bg);
  border-radius: 16px;
  overflow: hidden;
  box-shadow: var(--shadow);
  transition: transform 0.3s ease;
}

.product-card:hover {
  transform: translateY(-8px);
}

.product-image img {
  width: 100%;
  aspect-ratio: 1;
  object-fit: cover;
}

.product-placeholder {
  width: 100%;
  aspect-ratio: 1;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 4rem;
  background: var(--bg-primary);
}

.product-info {
  padding: 1.5rem;
  text-align: center;
}

.product-name {
  font-size: 1.25rem;
  margin-bottom: 0.5rem;
  color: var(--text-primary);
}

.product-price {
  font-size: 1.5rem;
  font-weight: 700;
  color: var(--accent);
}

/* Responsive */
@media (max-width: 768px) {
  .products-title {
    font-size: 1.75rem;
  }
  
  .products-grid {
    grid-template-columns: repeat(2, 1fr);
    gap: 1rem;
  }
  
  .product-placeholder {
    font-size: 2.5rem;
  }
}
</style>
