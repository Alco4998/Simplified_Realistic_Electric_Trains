do

    function on_entity_built(event)
        local entity = event.created_entity or event.created_entity
        local name = entity.name

        if name == "locomotive" then
            --register Loco to loco-table for later manipulation
            -- Not sure if this is bugged but I did have unregistered locos from older saves
            -- could be bad if this mod is added post save
            table.insert(global.locomotives, entity)
        end
    end
end

return on_entity_built