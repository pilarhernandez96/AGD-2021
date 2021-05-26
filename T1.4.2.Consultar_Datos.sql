
db.tasa_empleo.count(); 

db.tasa_empleo.aggregate([{$group: {_id: "$industry", conteo: { $sum: 1}}}]);

db.tasa_empleo.aggregate([{$group: {_id: "$role", conteo: { $sum: 1}}}]);

db.tasa_empleo.aggregate([{$group: {_id: "$job_family", conteo: { $sum: 1}}}]);

db.tasa_empleo.aggregate([{$group: {_id: "$post_date", promedio: { $avg: "$count_id_indexed" }}}]);

db.tasa_empleo.aggregate([{$group: {_id: {fecha: "$post_date", industria: "$industry"}, promedio: { $avg: "$count_id_indexed" }}}]);

db.tasa_empleo.aggregate([{$group: {_id: "$industry", promedio: { $avg: "$count_id_indexed" }}}]);

db.tasa_empleo.aggregate([{$group: {_id: "$role", promedio: { $avg: "$count_id_indexed" }}}]);

db.tasa_empleo.aggregate([{$group: {_id: {fecha: "$post_date", cargo: "$role"}, promedio: { $avg: "$count_id_indexed" }}}]).pretty();

db.tasa_empleo.find().sort( { count_id_indexed: -1 } ).limit(1).pretty();

db.tasa_empleo.find().sort( { count_id_indexed: 1 } ).limit(1).pretty();

db.tasa_empleo.aggregate([{$group : {_id: {fecha: "$post_date", industria: "$industry"}, tasa_max: { $max : "$count_id_indexed"}, tasa_min: { $min: "$count_id_indexed" }}}]);





