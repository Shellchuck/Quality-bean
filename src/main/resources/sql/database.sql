/*CREATE DATABASE quality
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;*/

CREATE TABLE customers (
                          id INT NOT NULL AUTO_INCREMENT,
                          name VARCHAR(63),
                          address VARCHAR(63),
                          contact_name VARCHAR(63),
                          email VARCHAR(63),
                          phone VARCHAR(63),
                          PRIMARY KEY (id)
)
    ENGINE = InnoDB;

CREATE TABLE departments (
                            id INT NOT NULL AUTO_INCREMENT,
                            name VARCHAR(63),
                            department_code VARCHAR(63),
                            PRIMARY KEY (id)
)
    ENGINE = InnoDB;

CREATE TABLE defects (
                             id INT NOT NULL AUTO_INCREMENT,
                             defect_code VARCHAR(63),
                             defect_name VARCHAR(63),
                             PRIMARY KEY (id)
)
    ENGINE = innoDB;

CREATE TABLE categories (
                          id INT NOT NULL AUTO_INCREMENT,
                          category_code VARCHAR(63),
                          category_name VARCHAR(63),
                          PRIMARY KEY (id)
)
    ENGINE = innoDB;

CREATE TABLE statuses (
                        id INT NOT NULL AUTO_INCREMENT,
                        status VARCHAR(63),
                        PRIMARY KEY (id)
)
    ENGINE = innoDB;



CREATE TABLE commodities (
                           id INT NOT NULL AUTO_INCREMENT,
                           name VARCHAR(63),
                           reference_code VARCHAR(63),
                           techn_spec VARCHAR(63),
                           revision_date DATETIME,
                           category_id INT NOT NULL,
                           PRIMARY KEY (id),
                           FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
    ENGINE = innoDB;

CREATE TABLE responsibles (
                             id INT NOT NULL AUTO_INCREMENT,
                             first_name VARCHAR(255),
                             last_name VARCHAR(255),
                             employee_no VARCHAR(255),
                             email VARCHAR(255),
                             phone VARCHAR(63),
                             password VARCHAR(255),
                             admin TINYINT(1),
                             enable TINYINT(1),
                             department_id INT NOT NULL,
                             PRIMARY KEY (id),
                             FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
    ENGINE = InnoDB;

CREATE TABLE claims (
                       id INT NOT NULL AUTO_INCREMENT,
                       issue_no    VARCHAR(255),
                       description VARCHAR(255),
                       quantity INT,
                       recurrence TINYINT(1) DEFAULT '0',
                       created DATETIME,
                       updated DATETIME,
                       claim_date DATETIME,
                       close_date DATETIME,
                       customer_id INT NOT NULL,
                       responsible_id INT NOT NULL,
                       status_id INT NOT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
                       FOREIGN KEY (responsible_id) REFERENCES responsible(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
                       FOREIGN KEY (status_id) REFERENCES status(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
    ENGINE = InnoDB;

CREATE TABLE claims_commodities (
                                 id INT NOT NULL AUTO_INCREMENT,
                                 claim_id INT NOT NULL,
                                 commodity_id INT NOT NULL,
                                 PRIMARY KEY (id),
                                 FOREIGN KEY (claim_id) REFERENCES claim(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
                                 FOREIGN KEY (commodity_id) REFERENCES commodity(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
    ENGINE = innoDB;

CREATE TABLE analyses (
                          id INT NOT NULL AUTO_INCREMENT,
                          analysis_code VARCHAR(63),
                          containment TEXT,
                          containment_date DATETIME,
                          root_cause TEXT,
                          corrective_actions TEXT,
                          corrective_date DATETIME,
                          verification TEXT,
                          verification_date DATETIME,
                          responsible_id INT NOT NULL,
                          claim_id INT NOT NULL ,
                          defect_type_id INT NOT NULL,
                          commodity_id INT NOT NULL,
                          PRIMARY KEY (id),
                          FOREIGN KEY (responsible_id) REFERENCES responsible(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
                          FOREIGN KEY (claim_id) REFERENCES claim(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
                          FOREIGN KEY (defect_type_id) REFERENCES defect_type(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
                          FOREIGN KEY (commodity_id) REFERENCES commodity(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
    ENGINE = innoDB;