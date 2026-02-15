hello = 'hello'

-- local
local world = ' world!'

--
-- Funções
--

-- declarando uma função
function say(text)
    print(text)
end

-- chamando uma função
say(hello .. world)

if world == 'world' then
    print('world!')
else
    print('hello!')
end


local i = 10
while i > 0 do
    i = i - 1
    print(i)
end

for j = 10, 1, -1 do
    print(j)
end

i = 10
repeat
    i = i - 1
    print(i)
until i == 0


local person = {}
person.name = 'Colton Ogden'
person.age = 26
person.height = 69.5

print(person['name'])
print(person.name)

for key, value in pairs(person) do
    print(key, value)
end
