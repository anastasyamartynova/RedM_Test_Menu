local featherMenu = exports['feather-menu'].initiate()

local firstMenu = featherMenu:RegisterMenu('firstMenu', {
    top = '40%',
    left = "20%"
    ['720width'] = '500px',
    ['1080width'] = '600px',
    ['2kwidth'] = '700px',
    ['4kwidth'] = '900px',
    style = {},
    contentslot = {
        style = {
            ['height'] = '300px',
            ['main-height'] = '300px'
        }
    },
    draggable = true
})

RegisterCommand('testMenu', function()
    local mainPage = firstMenu:RegisterPage("firstMenu-mainPage")
    mainPage:RegisterElement('header', {
        value = "Blya"
        slot = "header"
        style = {}
    })
    mainPage:RegisterElement("button", {
        label = "TestKnopka",
        style = {}
    }, function()
        print("Knopka is working") 
    end)

    firstMenu:Open({
        startupPage = mainPage
    })
end)