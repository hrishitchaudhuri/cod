\c chess

\o endgame.json
SELECT array_to_json(array_agg(endgame), FALSE) AS eg_json FROM endgame;
\o

\o federation.json
SELECT array_to_json(array_agg(federation), FALSE) AS fd_json FROM federation;
\o

