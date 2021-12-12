(ns hpdb.migration
  (:require [ragtime.jdbc :as jdbc]
            [ragtime.repl :as repl]))

(defn config []
  {:datastore  (jdbc/sql-database {:dbtype   "postgresql"
                                   :dbname   "hpdb_local"
                                   :user     "Takafumi"
                                   :password "oyama"})
   :migrations (jdbc/load-resources "migrations")})

(defn migrate []
  (repl/migrate (config)))

(defn rollback []
  (repl/rollback (config)))
