/*
  # Create visitors table

  1. New Tables
    - `visitors`
      - `id` (uuid, primary key)
      - `visitor_id` (text, not null)
      - `visit_date` (date, not null)
      - `created_at` (timestamptz, default now())

  2. Security
    - Enable RLS on `visitors` table
    - Add policy for public read access
    - Add policy for public insert access
*/

CREATE TABLE IF NOT EXISTS visitors (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  visitor_id text NOT NULL,
  visit_date date NOT NULL,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE visitors ENABLE ROW LEVEL SECURITY;

-- Allow public read access to visitor count
CREATE POLICY "Allow public read access"
  ON visitors
  FOR SELECT
  TO public
  USING (true);

-- Allow public to insert new visits
CREATE POLICY "Allow public to insert visits"
  ON visitors
  FOR INSERT
  TO public
  WITH CHECK (true);