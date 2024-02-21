do
    function on_entity_removed(event)
        local entity = event.entity
        local name = entity.name

        if name == "electric-locomotive" then
            --remove the old loco from loco-table
            local locoId = entity.unit_number

            for n, loco in ipairs(global.locomotives) do
                if loco.unit_number == locoId then
                    table.remove(global.locomotives, n)
                    break
                end
            end
        end
    end
end

return on_entity_removed