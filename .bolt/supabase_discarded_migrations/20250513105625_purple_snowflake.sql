/*
  # Create visitor counts table

  1. New Tables
    - `visitor_counts`
      - `id` (uuid, primary key)
      - `count` (integer, not null)
      - `created_at` (timestamp with time zone)
      - `updated_at` (timestamp with time zone)

  2. Security
    - Enable RLS on `visitor_counts` table
    - Add policy for authenticated users to read visitor counts
    - Add policy for service role to update visitor counts
*/

CREATE TABLE IF NOT EXISTS visitor_counts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  count integer NOT NULL DEFAULT 0,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

ALTER TABLE visitor_counts ENABLE ROW LEVEL SECURITY;

-- Allow anyone to read the visitor count
CREATE POLICY "Anyone can read visitor counts"
  ON visitor_counts
  FOR SELECT
  TO public
  USING (true);

-- Allow service role to update the visitor count
CREATE POLICY "Service role can update visitor counts"
  ON visitor_counts
  FOR UPDATE
  TO service_role
  USING (true)
  WITH CHECK (true);

-- Function to update the updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ language 'plpgsql';

-- Trigger to automatically update the updated_at column
CREATE TRIGGER update_visitor_counts_updated_at
  BEFORE UPDATE ON visitor_counts
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();