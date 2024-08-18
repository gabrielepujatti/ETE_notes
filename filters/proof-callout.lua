
local h2 = pandoc.Header(2, "Proof")

function Div(el)
    if quarto.doc.isFormat("html") then
        if el.classes:includes('proof') then
            local content = el.content
            table.insert(content, 1, h2)
            return pandoc.DIv(
                content,
                {class="callout-tip", collapse="true", style="minimal"}
            )
        end
    end
end
