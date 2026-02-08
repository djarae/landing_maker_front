-- Insertar una landing de prueba para el usuario admin
DO $$
DECLARE
    userId text;
    landingId integer;
BEGIN
    -- Obtener el ID del usuario admin
    SELECT "Id" INTO userId FROM "AspNetUsers" WHERE "Email" = 'admin@landing.com' LIMIT 1;

    IF userId IS NOT NULL THEN
        -- Insertar Landing
        INSERT INTO "Landings" ("Name", "PresetType", "StyleType", "ThemeMode", "IsPublished", "CreatedAt", "UpdatedAt", "UserId")
        VALUES ('Landing Demo', 1, 3, 0, true, NOW(), NOW(), userId) -- 1=Pyme, 3=Miel, 0=Toggle
        RETURNING "Id" INTO landingId;

        -- Insertar Secciones para la landing
        -- Hero
        INSERT INTO "LandingSections" ("SectionType", "Order", "ConfigJson", "LandingId")
        VALUES ('hero', 1, '{"businessName": "Mielería Real", "tagline": "La dulzura natural en tu mesa", "ctaText": "Comprar Miel", "ctaUrl": "#productos"}', landingId);

        -- Products
        INSERT INTO "LandingSections" ("SectionType", "Order", "ConfigJson", "LandingId")
        VALUES ('products', 2, '{"title": "Mieles Premium", "products": [{"name": "Miel de Ulmo", "price": "$12.990", "image": ""}, {"name": "Miel Multiflora", "price": "$8.990", "image": ""}]}', landingId);

        -- Contact
        INSERT INTO "LandingSections" ("SectionType", "Order", "ConfigJson", "LandingId")
        VALUES ('contact', 3, '{"title": "Contáctanos", "phone": "+56912345678", "email": "ventas@mieleria.cl"}', landingId);
        
        RAISE NOTICE 'Landing de prueba creada con ID: %', landingId;
    ELSE
        RAISE NOTICE 'No se encontró el usuario admin. Inicia sesión primero para crearlo.';
    END IF;
END $$;
