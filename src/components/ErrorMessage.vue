<script setup>
defineProps({
  message: {
    type: String,
    default: 'Ha ocurrido un error'
  }
})
</script>

<template>
  <div class="error-container">
    <div class="error-content">
      <div class="error-icon">⚠️</div>
      <h1>Oops!</h1>
      <p>{{ message }}</p>
      <a href="/" class="retry-link">Volver al inicio</a>
    </div>
  </div>
</template>

<style scoped>
.error-container {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: linear-gradient(135deg, #ff6b6b 0%, #ee5a24 100%);
  color: white;
  font-family: 'Segoe UI', system-ui, sans-serif;
}

.error-content {
  text-align: center;
  padding: 2rem;
}

.error-icon {
  font-size: 4rem;
  margin-bottom: 1rem;
}

.error-content h1 {
  font-size: 2.5rem;
  margin: 0 0 0.5rem;
}

.error-content p {
  font-size: 1.1rem;
  opacity: 0.9;
  margin-bottom: 2rem;
  max-width: 400px;
}

.retry-link {
  display: inline-block;
  padding: 0.75rem 2rem;
  background: white;
  color: #ee5a24;
  text-decoration: none;
  border-radius: 8px;
  font-weight: 500;
  transition: transform 0.2s ease;
}

.retry-link:hover {
  transform: translateY(-2px);
}
</style>
