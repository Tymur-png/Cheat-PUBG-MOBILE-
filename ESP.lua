gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("100;200;300::12", gg.TYPE_FLOAT)
results = gg.getResults(100)
for i, v in ipairs(results) do
    gg.addListItems({{address = v.address, flags = gg.TYPE_FLOAT, name = "Item_" .. i}})
end
gg.setVisible(false)
while true do
    for i, v in ipairs(gg.getListItems()) do
        local value = gg.getValues({{address = v.address, flags = gg.TYPE_FLOAT}})[1].value
        gg.toast("Предмет: X=" .. value)
    end
    gg.sleep(1000)
end