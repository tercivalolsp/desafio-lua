--[[

Nome da Criatura
Descrição
Som que Faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Intaligência
Habilidades
    Furtividade
    Explosão

===================================
|   CREEPER
|   Um Monstro furtivo com temperamento explosivo. 
|
|   Som: Tssssss
|
|   Atributos:
|       Ataque: ######00
|       Defesa: ###00000
|       ...
|
===================================

]]

-- Ativar UTF-8 no Terminal
os.execute("chcp 65001")

-- Criatura
local monstrerName = "CREEPER"
local description = "Um Mostro furtivo com temperamento explosivo"
local emoji = "🧨"
local sound = "Tsssss"
local item = "Pólvora"
local favoriteTime = "Noturno"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 0
local lifeAttribute = 2
local speedAttribute = 7
local inteligenceAttribute = 2

-- função que recebe um atributo e retorna uma barra de progresso em String / Texto
local function getProgressBar(attribute)

    local fullChar = "🟥"
    local emptyChar = "⬜"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end

    return result
    
end

-- Cartão
print("============================================================")
print("|")
print("| " .. monstrerName)
print("| " .. description)
print("|")
print("| Item: " .. item)
print("| Som: " .. sound)
print("| Emoji Favorito: " .. emoji)
print("| Horário Favorito: " .. favoriteTime)
print("|")
print("| Atributos")
print("|    Ataque:      " .. getProgressBar(attackAttribute))
print("|    Defesa:      " .. getProgressBar(defenseAttribute))
print("|    Life:        " .. getProgressBar(lifeAttribute))
print("|    Velocidade   " .. getProgressBar(speedAttribute))
print("|    Inteligência " .. getProgressBar(inteligenceAttribute))
print("|")
print("============================================================")