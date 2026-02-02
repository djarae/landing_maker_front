<script setup>
</script>

<template>
  <div class="not-found">
    <div class="not-found-content">
      <h1>404</h1>
      <p>Página no encontrada</p>
      <a href="/" class="back-link">Volver al inicio</a>
    </div>
  </div>
</template>

<style scoped>
.not-found {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  font-family: 'Segoe UI', system-ui, sans-serif;
}

.not-found-content {
  text-align: center;
}

.not-found h1 {
  font-size: 8rem;
  margin: 0;
  line-height: 1;
}

.not-found p {
  font-size: 1.5rem;
  margin: 1rem 0 2rem;
  opacity: 0.9;
}

.back-link {
  display: inline-block;
  padding: 0.75rem 2rem;
  background: white;
  color: #667eea;
  text-decoration: none;
  border-radius: 8px;
  font-weight: 500;
  transition: transform 0.2s ease;
}

.back-link:hover {
  transform: translateY(-2px);
}
</style>
