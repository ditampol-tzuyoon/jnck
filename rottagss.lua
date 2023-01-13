if ShowIP then
    Lihatin = "Lihatin"
else
    Lihatin = "Gak"
end

if Jastip then
	Gajian = true
end

LogoPartai = {
    "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/partai/demokrat.png",
    "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/partai/gerindra.png",
    "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/partai/golkar.png",
    "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/partai/nasdem.png",
    "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/partai/pdip.jpeg",
    "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/partai/perindo.png"
}

Lopar = math.random(1, #LogoPartai)

function ohdtag(logger)
	
if getBot().status ~= "online" then
    if Jastip then
        Ment = "<@".. userdc .."> <@&".. UserID_Role ..">"
    else
        Ment = "<@".. userdc ..">"
    end
else
    Ment = ""
end
	
    if getBot().status == "online" then
        statzBot = ":green_circle:"
        Warna = 7405312
    else
        statzBot = ":red_circle:"
        Warna = 16711680
    end
	
    kalimatku = "\n~\nLINK INFO: "
    chinfo = "\nCHANNEL:"
    local script = [[
        $gethook = "]]..MainHook..[["
        $w = "]]..PingHook..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $ambilhook = Invoke-RestMethod -Uri $gethook -Method GET
        $chid = $ambilhook.channel_id
        $guid = $ambilhook.guild_id
        $hukid = "]]..HookID..[["
        $Morez = "https://discord.com/channels/" + $guid + "/" + $chid + "/" + $hukid

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[[ ]].. kalimatku ..[[' + $Morez + ']].. chinfo ..[[ <#' + $chid + '>'
        $color       = ']]..Warna..[['

        $embedObject = [PSCustomObject]@{
            description = $descriptions
            color       = $color
        }

        $embedArray.Add($embedObject) | Out-Null

        $Body = [PSCustomObject]@{
            embeds = $embedArray
            'username' = ']]..getBot().name..[[|OD2320'
            'content' = ']]..Ment..[['
        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]

    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end

function ohdmod(logger)

    InfoBy = "\nInfo By <@" .. userdc .. ">"
    TagRole = "<@&1057182557185257522>"
    Warna = 16711680
        
    local script = [[
        $w = "]]..modpek..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[[ ]]..InfoBy..[['
        $color       = ']]..Warna..[['

        $embedObject = [PSCustomObject]@{
            description = $descriptions
            color       = $color
        }

        $embedArray.Add($embedObject) | Out-Null

        $Body = [PSCustomObject]@{
            embeds = $embedArray
            'username' = 'ModsMmk | Od2320'
            'content' = ']]..TagRole..[['
        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]

    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end

function odnotice(logger)
	
    if getBot().status == "online" then
        statzBot = ":green_circle:"
        Warna = 7405312
    else
        statzBot = ":red_circle:"
        Warna = 16711680
    end

    if Jastip then
        if userdc then
            Mention = "<@".. userdc .."> <@&".. UserID_Role ..">"
        else
            Mention = ""
        end
    else
        if userdc then
            Mention = "<@"..userdc..">"
        else
            Mention = ""
        end
    end

    local script = [[
        $w = "]]..PingHook..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[['
        $color       = ']]..Warna..[['

        $embedObject = [PSCustomObject]@{
            description = $descriptions
            color       = $color
        }

        $embedArray.Add($embedObject) | Out-Null

        $Body = [PSCustomObject]@{
            embeds = $embedArray
            'username' = ']]..getBot().name..[[ | OD2320'
            'content' = ']]..Mention..[['
        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]

    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end

function odplant(logger)

    MenitRdp = (os.date("*t", os.time()).min) + 0
    JamRdp = (os.date("*t", os.time()).hour) + Selisih

    if MenitRdp < 10 then
        myMenit = "0"..MenitRdp
    else
        myMenit = MenitRdp
    end

    if JamRdp >= 24 then
        JamRdp = JamRdp - 24
    end

    if JamRdp < 10 then
        myJam = "0"..JamRdp
    else
        myJam = JamRdp
    end

    if block == 4584 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/pepper.webp"
    elseif block == 5666 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/LaserGrid.webp"
    elseif block == 3004 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/ftank.webp"
    elseif block == 340 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/chand.webp"
    elseif block == 8640 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/sambalado.webp"
    else
        Thumbs = ""
    end

	TanamWorld = "Planting ("..nPlant.." of "..#WorldPlant.." Worlds)"
    Warna = 7405312
    Banteng = math.random(1, #LogoPartai)

    SendPlant = PlantHook.."/messages/"..PlantMsg

    local script = [[
        $w = "]]..SendPlant..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[['
        $color       = ']]..Warna..[['

        $footerObject = [PSCustomObject]@{
            text = 'Bonus Planting' + "`n" + '(Time : ]]..myJam..[[:]]..myMenit..[[)'
            icon_url = ']].. Thumbs ..[['
        }

        $thumbnailObject = [PSCustomObject]@{
            url = ']].. Thumbs ..[['
        }

        $authorObject = [PSCustomObject]@{
            name = "Continue Plant || Author : Ohdear#2320"
            url = "https://discord.gg/TjVwdgma74"
            icon_url = "]]..LogoPartai[Banteng]..[["
        }

        $fieldArray = @(

            @{
                name = "]]..TanamWorld..[["
                value = "]]..IngfoPlant()..[["
                inline = "false"
            }
        )

        $embedObject = [PSCustomObject]@{
            description = $descriptions
            color       = $color
            footer      = $footerObject
            thumbnail   = $thumbnailObject
            author      = $authorObject
            fields      = $fieldArray
        }

        $embedArray.Add($embedObject) | Out-Null

        $Body = [PSCustomObject]@{
            embeds = $embedArray
            'username' = ']]..getBot().name..[[ | OD2320'
        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Patch -ContentType 'application/json'
    ]]

    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end

if HideInfoRdp then
    Memek("https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/webskip.lua")
else
    Memek("https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/webs.lua")
end
