SELECT setval('cidade_id_seq', coalesce(max(id),0) + 1, false) FROM cidade;
SELECT setval('uf_id_seq', coalesce(max(id),0) + 1, false) FROM uf;