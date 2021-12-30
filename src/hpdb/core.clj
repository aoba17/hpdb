(ns hpdb.core
  (:require [ragtime.jdbc :as jdbc]
            [ragtime.repl :as repl]
            [ragtime.strategy :as strategy]))

(defn config [& [m]]
  (merge {:datastore  (jdbc/sql-database {:dbtype   "postgresql"
                                          :dbname   "hpdb_local"
                                          :user     "Takafumi"
                                          :password "oyama"})
          :migrations (jdbc/load-resources "migrations")}
         m))

(defn migrate []
  (repl/migrate (config)))

(defn migrate-rebase []
  (repl/migrate (config {:strategy strategy/rebase})))

(defn rollback []
  (repl/rollback (config)))
