<template>
  <div class="loading-spinner">
    <div class="spinner"></div>
    <p>Cargando...</p>
  </div>
</template>

<style scoped>
.loading-spinner {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background: #f5f5f5;
}

.spinner {
  width: 50px;
  height: 50px;
  border: 4px solid #e0e0e0;
  border-top-color: #4F46E5;
  border-radius: 50%;
  animation: spin 1s linear infinite;
}

@keyframes spin {
  to { transform: rotate(360deg); }
}

.loading-spinner p {
  margin-top: 1rem;
  color: #666;
  font-family: 'Segoe UI', system-ui, sans-serif;
}
</style>
