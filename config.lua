Config = {}
--Item names
Config = {
    items = {
        'ace',
        'siberia',
        'dope'
    }
}

Config.spitpouch = 'spitpouch' --Command for removig pouches
 
local language = 'EN' -- Set the default language here

        ---------------
        ----LOCALES----
        ---------------
-- CS
local StringsCS = {
    ['poping'] = "Dáváš si Nikotinový Sáček pod ret...",
    ['spit'] = "Vyndaváš si nikotinový sáček...",
    ['popinout'] = "Vyndaváš si Nikotinový sáček",
    ['removedsache'] = "Vyplivnul jsi žuvák",
    ['informcoomand'] = "Použij pro vyndání žuváku",
}

-- EN
local StringsEN = {
    ['poping'] = "Putting nicotine pouch under lip...",
    ['spit'] = "Removing nicotine pouch...",
    ['popinout'] = "Removing nicotine pouch",
    ['removedsache'] = "You have spited out the pouch",
    ['informcoomand'] = "Use to remove pouch",
}

-- Function to set the language
function SetLanguage(lang)
    if lang == 'CS' then
        Strings = StringsCS
    elseif lang == 'EN' then
        Strings = StringsEN
    end
end

-- Set the initial language
SetLanguage(language)