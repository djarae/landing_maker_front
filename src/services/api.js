import axios from 'axios'

const API_BASE_URL = import.meta.env.VITE_API_URL || 'http://localhost:5000'

const api = axios.create({
    baseURL: API_BASE_URL,
    headers: {
        'Content-Type': 'application/json'
    }
})

/**
 * Obtiene una landing por su ID
 * @param {number} id - ID de la landing
 * @returns {Promise<Object>} - Datos de la landing
 */
export async function getLandingById(id) {
    try {
        const response = await api.get(`/api/landings/${id}`)
        return response.data
    } catch (error) {
        if (error.response?.status === 404) {
            throw new Error('Landing no encontrada o no publicada')
        }
        throw new Error('Error al conectar con el servidor')
    }
}

/**
 * Health check del API
 * @returns {Promise<Object>}
 */
export async function healthCheck() {
    const response = await api.get('/api/landings/health')
    return response.data
}

export default api
