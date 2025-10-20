import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import path from 'path';

export default defineConfig({
  plugins: [react()],
  
root: path.resolve(__dirname, 'frontend'),

  server: {
    port: 3000,
    open: true,
    cors: true,
    },
  
  // Настройки сборки
  build: {
    outDir: path.resolve(__dirname, 'public'),
    emptyOutDir:true,
    sourcemap: true,
    minify: 'esbuild'
  },

    css: {
     preprocessorOptions: {
        scss: {
          silenceDeprecations: [
            'import',
            'mixed-decls',
            'color-functions',
            'global-builtin',
          ],
        },
     },
  },
})