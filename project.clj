(defproject hpdb "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "EPL-2.0 OR GPL-2.0-or-later WITH Classpath-exception-2.0"
            :url  "https://www.eclipse.org/legal/epl-2.0/"}
  :dependencies [[org.clojure/clojure "1.10.1"]
                 [dev.weavejester/ragtime "0.9.0"]
                 [org.postgresql/postgresql "42.3.1"]]
  :repl-options {:init-ns hpdb.core}
  :aliases {"migrate"        ["run" "-m" "hpdb.core/migrate"]
            "migrate-rebase" ["run" "-m" "hpdb.core/migrate-rebase"]
            "rollback"       ["run" "-m" "hpdb.core/rollback"]
            "migrate-stg"    ["run" "-m" "hpdb.core/migrate-stg"]
            "migrate-prod"   ["run" "-m" "hpdb.core/migrate-prod"]
            "rollback-stg"   ["run" "-m" "hpdb.core/rollback-stg"]
            "rollback-prod"  ["run" "-m" "hpdb.core/rollback-prod"]})
