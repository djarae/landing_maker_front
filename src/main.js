import { createApp } from 'vue'
import { createRouter, createWebHistory } from 'vue-router'
import App from './App.vue'
import './assets/styles/main.css'

// Routes
import LandingView from './views/LandingView.vue'
import NotFound from './views/NotFound.vue'

const routes = [
  { 
    path: '/', 
    name: 'landing',
    component: LandingView 
  },
  { 
    path: '/:pathMatch(.*)*', 
    name: 'not-found',
    component: NotFound 
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

const app = createApp(App)
app.use(router)
app.mount('#app')
