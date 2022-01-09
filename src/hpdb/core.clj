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

(defn stg-config [& [m]]
  (merge {:datastore  (jdbc/sql-database {:dbtype   "postgresql"
                                          :dbname   "hpdb_local"
                                          :user     "Takafumi"
                                          :password "oyama"})
          :migrations (jdbc/load-resources "migrations")}
         m))

(defn prod-config [& [m]]
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

(defn migrate-stg []
  (repl/migrate (stg-config)))

(defn migrate-prod []
  (repl/migrate (prod-config)))

(defn rollback []
  (repl/rollback (config)))

(defn rollback-stg []
  (repl/rollback (stg-config)))

(defn rollback-prod []
  (repl/rollback (prod-config)))
