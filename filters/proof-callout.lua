function Div(el)
  if quarto.doc.isFormat("html") then
    if el.classes:includes('proof-box') then

      el.classes = {"callout", "callout-tip"}
      el.attributes["collapse"] = "true"
      el.attributes["appearance"] = "minimal"
    end
  end
end 