// @ts-check
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
  content: {
    collections: [
      {
        name: 'wiki',
        directory: 'src/content/wiki',
      },
    ],
  },
});