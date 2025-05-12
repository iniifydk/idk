import { defineCollection, z } from 'astro:content';

const wikiCollection = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    order: z.number().optional(),
    category: z.string().optional(),
  }),
});

export const collections = {
  wiki: wikiCollection,
};