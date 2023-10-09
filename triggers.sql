--Crea la tabla query_log que almacena la información de los SELECT, UPDATE y DELETE
CREATE TABLE IF NOT EXISTS public.query_log (
    id SERIAL PRIMARY KEY,
    username TEXT,
    table_name TEXT,
    query_text TEXT,
    timestamp TIMESTAMPTZ DEFAULT NOW()
);

-------------- EN ORDEN


-- Crear una función que registre las operaciones en la tabla ability
CREATE OR REPLACE FUNCTION log_query_ability()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'ability';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla ability
CREATE TRIGGER log_query_ability_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.ability
FOR EACH ROW
EXECUTE FUNCTION log_query_ability();




-- Crear una función que registre las operaciones en la tabla emergency
CREATE OR REPLACE FUNCTION log_query_emergency()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    
-- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'emergency';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla emergency
CREATE TRIGGER log_query_emergency_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.emergency
FOR EACH ROW
EXECUTE FUNCTION log_query_emergency();


-- Crear una función que registre las operaciones en la tabla emergency_ability
CREATE OR REPLACE FUNCTION log_query_emergency_ability()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'emergency_ability';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla emergency_ability
CREATE TRIGGER log_query_emergency_ability_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.emergency_ability
FOR EACH ROW
EXECUTE FUNCTION log_query_emergency_ability();




-- Crear una función que registre las operaciones en la tabla emergency_institution
CREATE OR REPLACE FUNCTION log_query_emergency_institution()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'emergency_institution';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla emergency_institution
CREATE TRIGGER log_query_emergency_institution_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.emergency_institution
FOR EACH ROW
EXECUTE FUNCTION log_query_emergency_institution();




-- Crear una función que registre las operaciones en la tabla emergency_task
CREATE OR REPLACE FUNCTION log_query_emergency_task()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual
-- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'emergency_task';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla emergency_task
CREATE TRIGGER log_query_emergency_task_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.emergency_task
FOR EACH ROW
EXECUTE FUNCTION log_query_emergency_task();





-- Crear una función que registre las operaciones en la tabla institution
CREATE OR REPLACE FUNCTION log_query_institution()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
     -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'institution';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla institution
CREATE TRIGGER log_query_institution_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.institution
FOR EACH ROW
EXECUTE FUNCTION log_query_institution();





-- Crear una función que registre las operaciones en la tabla profile
CREATE OR REPLACE FUNCTION log_query_profile()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'profile';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla profile
CREATE TRIGGER log_query_profile_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.profile
FOR EACH ROW
EXECUTE FUNCTION log_query_profile();





-- Crear una función que registre las operaciones en la tabla ranking
CREATE OR REPLACE FUNCTION log_query_ranking()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'ranking';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;
    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla ranking
CREATE TRIGGER log_query_ranking_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.ranking
FOR EACH ROW
EXECUTE FUNCTION log_query_ranking();





-- Crear una función que registre las operaciones en la tabla request
CREATE OR REPLACE FUNCTION log_query_request()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'request';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla request
CREATE TRIGGER log_query_request_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.request
FOR EACH ROW
EXECUTE FUNCTION log_query_request();



-- Crear una función que registre las operaciones en la tabla rol
CREATE OR REPLACE FUNCTION log_query_rol()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'rol';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla rol
CREATE TRIGGER log_query_rol_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.rol
FOR EACH ROW
EXECUTE FUNCTION log_query_rol();





-- Crear una función que registre las operaciones en la tabla state
CREATE OR REPLACE FUNCTION log_query_state()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'state';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla state
CREATE TRIGGER log_query_state_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.state
FOR EACH ROW
EXECUTE FUNCTION log_query_state();





-- Crear una función que registre las operaciones en la tabla task
CREATE OR REPLACE FUNCTION log_query_task()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'task';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla task
CREATE TRIGGER log_query_task_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.task
FOR EACH ROW
EXECUTE FUNCTION log_query_task();



-- Crear una función que registre las operaciones en la tabla task_request
CREATE OR REPLACE FUNCTION log_query_task_request()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'task_request';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;
    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla task_request
CREATE TRIGGER log_query_task_request_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.task_request
FOR EACH ROW
EXECUTE FUNCTION log_query_task_request();




-- Crear una función que registre las operaciones en la tabla user
CREATE OR REPLACE FUNCTION log_query_user()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'user';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla user
CREATE TRIGGER log_query_user_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.user
FOR EACH ROW
EXECUTE FUNCTION log_query_user();




-- Crear una función que registre las operaciones en la tabla user_ability
CREATE OR REPLACE FUNCTION log_query_user_ability()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'user_ability';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla user_ability
CREATE TRIGGER log_query_user_ability_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.user_ability
FOR EACH ROW
EXECUTE FUNCTION log_query_user_ability();



-- Crear una función que registre las operaciones en la tabla user_request
CREATE OR REPLACE FUNCTION log_query_user_request()
RETURNS TRIGGER AS $$
DECLARE
    current_username VARCHAR(255);
    table_name VARCHAR(25);
    query_text VARCHAR(10);
BEGIN
    -- Obtener el nombre de usuario actual y dar el nombre de la tabla
    current_username := session_user;
    table_name := 'user_request';

    -- Verificar la operación realizada
    IF (TG_OP = 'INSERT') THEN
        query_text := 'INSERT';
    ELSIF (TG_OP = 'UPDATE') THEN
        query_text := 'UPDATE';
    ELSIF (TG_OP = 'DELETE') THEN
        query_text := 'DELETE';
    END IF;

    -- Insertar el registro en la tabla query_log usando la variable current_username, table_name y query_text
    INSERT INTO query_log (username, table_name, query_text) VALUES (current_username, table_name, query_text);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Crear el trigger que se dispara después de INSERT, UPDATE o DELETE en la tabla user_request
CREATE TRIGGER log_query_user_request_trigger
AFTER INSERT OR UPDATE OR DELETE
ON public.user_request
FOR EACH ROW
EXECUTE FUNCTION log_query_user_request();

