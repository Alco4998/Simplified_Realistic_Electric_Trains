
do
    function on_tick(event)
        for i, loco in ipairs(global.locomotives) do
            local train = loco.train
            local name = loco.name
            if train.riding_state.acceleration == defines.riding.acceleration.braking then
                log(train.speed)
            end
        end
    end
end

return on_tick