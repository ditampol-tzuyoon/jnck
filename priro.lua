if ShowIP then
    Lihatin = "Lihatin"
else
    Lihatin = "Gak"
end

function StatusAktif(yoopo)
    odv = 0
    for _, v in pairs(getBots()) do
        if v.status == yoopo then
            odv = odv + 1
        end
    end
    return odv
end

function SemuaGems()
    odv = 0
    for _, v in pairs(getBots()) do
        if v.status == "online" then
            odv = odv + v.gems
        end
    end
    return odv
end

function ciduklu(logger, maUrlz)

AllDelay = "\n~\n"..emot_bot.." "..getBot().name.." (Lv "
..getBot().level..")\nBreak / Place / HT / Plant / World : **("
..delaypnb.." / "..delayplace.." / "..delayht.." / "
..delayplant.." / "..delayworld..")**"

    MenitRdp = (os.date("*t", os.time()).min)
    JamRdp = (os.date("*t", os.time()).hour) + Selisih

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

    local script = [[

    $w = "]]..maUrlz..[["

    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $interface = Get-NetConnectionProfile
    $ip = Get-NetIPAddress -InterfaceAlias $interface.InterfaceAlias -AddressFamily IPv4 | ForEach-Object IPAddress
    $CompObject = Get-WmiObject -Class WIN32_OperatingSystem
    $Rams = ((($CompObject.TotalVisibleMemorySize - $CompObject.FreePhysicalMemory)*100)/ $CompObject.TotalVisibleMemorySize)
    $Ram = [Math]::Floor($Rams)
    $CPUs = (Get-WmiObject Win32_Processor | Measure-Object -Property LoadPercentage -Average | Select Average).Average
    $CPU = [Math]::Floor($CPUs)

    [System.Collections.ArrayList]$embedArray = @()
    $descriptions = ']].. logger ..[[ ]]..AllDelay..[['
    $color       = ']]..math.random(1000000,9999999)..[['

    $footerObject = [PSCustomObject]@{
        text = 'IP : ' + $ip + "`n" + $Tanggal + '(Time : ]]..myJam..[[:]]..MenitRdp..[[)'
        icon_url = ']].. Thumbs ..[['
    }

    $thumbnailObject = [PSCustomObject]@{
        url = ']].. Thumbs ..[['
    }

    $authorObject = [PSCustomObject]@{
        name = ']].. Tizy ..[[' + " || CPU : " + $CPU + "%" + " || RAM : " + $Ram + "%"
        url = "https://discord.gg/TjVwdgma74"
        icon_url = "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/dwaddwa.jpeg"
    }


    $embedObject = [PSCustomObject]@{
        description = $descriptions
        color       = $color
        footer      = $footerObject
        thumbnail   = $thumbnailObject
        author      = $authorObject
    }

    $embedArray.Add($embedObject) | Out-Null

    $Body = [PSCustomObject]@{

        embeds = $embedArray

        'username' = ']]..Tizy..[['

    }

    Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]

    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end

function ohdtag(logger)
	
if getBot().status ~= "online" then
    Ment = "<@".. userdc ..">"
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
	
    kalimatku = "\n~\n" ..emot_bot.. " " ..getBot().name.. "\nInfo Bot Silahkan Cek di"
    local script = [[
        $gethook = "]]..MainHook..[["
        $w = "]]..PingHook..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $ambilhook = Invoke-RestMethod -Uri $gethook -Method GET
        $dapatid = $ambilhook.channel_id

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[[ ]].. kalimatku ..[[ <#' + $dapatid + '>'
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

    if userdc then
        Mention = "<@"..userdc..">"
    else
        Mention = ""
    end

    if getBot().status == "online" then
        statzBot = ":green_circle:"
        Warna = 7405312
    else
        statzBot = ":red_circle:"
        Warna = 16711680
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

function ohdsay(logger, hookURL, Pings)

if namapack == "crackers" then
    Winter = "\n~\n>> Happy Christmas! Crackers Bought **("..EventBuy.." of 20)**"
else
    Winter = ""
end
	
if LinkImage then
    imagez = LinkImage
else
    imagez = ""
end

	if Soil then
		Judulz = "Rotasi Soil ("..versi..") || "..#ListPembeli.." Users."
	else
		Judulz = "Rotasi Farm ("..versi..") || "..#ListPembeli.." Users."
	end

    if Pings then
        ingfo = "<@" .. userdc .. ">"
    else
        ingfo = ""
    end

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

    if Istirahat then
        TempOff = "\n~\n**Bot akan Off Tiap Jam (_" ..InfoTidur().. "_) Selama " .. DelayTidur .. " Menit.**\n~\n"
    else
        TempOff = ""
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
	
    if getBot().status == "online" then
        statzBot = ":green_circle:"
        Warna = 7405312
    else
        statzBot = ":red_circle:"
        Warna = 16711680
    end

    if findClothes(98) then
        PickBotz = ":green_circle: **Pickaxe** (x"..findItem(98)..")"
    else
        PickBotz = ":red_circle: **Pickaxe** (x"..findItem(98)..")"
    end

    if ChangeBot then
        targetlv = "("..getBot().level.."/"..targetlevel..")"
    else
        targetlv = getBot().level
    end

AllDelay = "\n~\nBreak / Place / HT / Plant / World : **("
..delaypnb.." / "..delayplace.." / "..delayht.." / "
..delayplant.." / "..delayworld..")**"

    WorldSkrg = (getBot().world):upper()
    if RingkasWorldName then
        Muncul = false
        for _, v in pairs(World) do
            if v:upper() == WorldSkrg then
                Muncul = true
            end
        end
        for _, v in pairs(WorldSeed) do
            if v:upper() == WorldSkrg then
                Muncul = true
            end
        end
        if WorldPack:upper() == WorldSkrg then
            Muncul = true
        end
        if WorldAxe:upper() == WorldSkrg then
            Muncul = true
        end
        if Muncul then
            WorldSkrg = WorldSkrg:gsub(string.sub(WorldSkrg, 1, string.len(WorldSkrg) - 3), "")
        end
    end

    if hookURL == MainHook then
        if HookID ~= "XXX" then
            URLWeb = hookURL.."/messages/"..HookID
            methodz = "Patch"
        else
            URLWeb = hookURL
            methodz = "Post"
        end
        local script = [[

        $w = "]]..URLWeb..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $interface = Get-NetConnectionProfile
        $ip = Get-NetIPAddress -InterfaceAlias $interface.InterfaceAlias -AddressFamily IPv4 | ForEach-Object IPAddress
        $CompObject = Get-WmiObject -Class WIN32_OperatingSystem
        $Rams = ((($CompObject.TotalVisibleMemorySize - $CompObject.FreePhysicalMemory)*100)/ $CompObject.TotalVisibleMemorySize)
        $Ram = [Math]::Floor($Rams)
        $CPUs = (Get-WmiObject Win32_Processor | Measure-Object -Property LoadPercentage -Average | Select Average).Average
        $CPU = [Math]::Floor($CPUs)
        $LimitCPUz = ']].. LimitCPU ..[['
        $LihatIP = ']].. Lihatin ..[['

        if($CPU -le $LimitCPUz){
            $Mention = ']]..ingfo..[['
        }else{
            $Mention = 'Cek CPU Ngab <@]].. userdc ..[[> !'
        }

        if($LihatIP -match "Lihatin"){
            $YourIP = $ip
        }else{
            $YourIP = 'IP Disembunyikan'
        }

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[[ ]]..TempOff..[[ ]]..AllDelay..[['
        $color       = ']]..Warna..[['


        $footerObject = [PSCustomObject]@{
            text = 'Rotation Farm by Ohdear#2320' + "`n" + '(Time : ]]..myJam..[[:]]..myMenit..[[)'
            icon_url = ']].. Thumbs ..[['
        }

        $thumbnailObject = [PSCustomObject]@{
            url = ']].. Thumbs ..[['
        }
		
	$imageObject = [PSCustomObject]@{
        	url = ']].. imagez ..[['
    	}

        $authorObject = [PSCustomObject]@{
            name = "]]..Judulz..[[ || Author : Ohdear#2320"
            url = "https://discord.gg/TjVwdgma74"
            icon_url = "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/dwaddwa.jpeg"
        }

        $fieldArray = @(

            @{
                name = "]]..emot_bot..[[ Bot Name"
                value = "]]..getBot().name..[[ **(]]..getPing()..[[ Ms)**"
                inline = "false"
            }

            @{
                name = ":earth_asia: Current World"
                value = "]]..WorldSkrg..[["
                inline = "true"
            }
            @{
                name = "]]..emot_pickaxe..[[ Tools"
                value = "]]..PickBotz..[["
                inline = "true"
            }
            @{
                name = "]]..emot_rank..[[ Bot Level"
                value = "]]..targetlv..[["
                inline = "true"
            }

            @{
                name = "]]..statzBot..[[ Bot Status"
                value = "**]]..(getBot().status):upper()..[[**"
                inline = "true"
            }
            @{
                name = "]]..emot_tas..[[ Inventory Slot"
                value = "]]..(#getInventory() + 1)..[[/]]..getBot().slots..[["
                inline = "true"
            }
            @{
                name = "]]..emot_gems..[[ Gems in Backpack"
                value = "]]..findItem(112)..[[/]]..hargapack..[["
                inline = "true"
            }

            @{
                name = "]]..emot_computer..[[ RDP Info"
                value = "$YourIP`nCPU USAGE $CPU%`nRAM USAGE $RAM%"
                inline = "true"
            }
            @{
                name = ":gem: ]]..GetNameID(FavItem)..[[ in Backpack"
                value = "]]..(findItem(FavItem))..[[ Items"
                inline = "true"
            }
            @{
                name = "]]..emot_gems..[[ All Gems and Timers"
                value = "]]..AllGems..[[ Gems`n]]..BotRun..[["
                inline = "true"
            }

            @{
                name = "]]..emot_world..[[ World Info"
                value = "]]..ShowWorld..[[]]..Winter..[["
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
		image       = $imageObject
        }

        $embedArray.Add($embedObject) | Out-Null

        $Body = [PSCustomObject]@{

            embeds = $embedArray

            'username' = ']]..getBot().name..[[|OD2320'
            'content' = $Mention

        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method ]]..methodz..[[ -ContentType 'application/json'
        ]]
        local pipe = io.popen("powershell -command -", "w")
        pipe:write(script)
        pipe:close()

    elseif hookURL == WebhookSeed then
        if HookIDSeed ~= "XXX" then
            URLWeb = hookURL.."/messages/"..HookIDSeed
            methodz = "Patch"
        else
            URLWeb = hookURL
            methodz = "Post"
        end
        local script = [[

        $w = "]]..URLWeb..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $interface = Get-NetConnectionProfile
        $ip = Get-NetIPAddress -InterfaceAlias $interface.InterfaceAlias -AddressFamily IPv4 | ForEach-Object IPAddress
        $CompObject = Get-WmiObject -Class WIN32_OperatingSystem
        $Rams = ((($CompObject.TotalVisibleMemorySize - $CompObject.FreePhysicalMemory)*100)/ $CompObject.TotalVisibleMemorySize)
        $Ram = [Math]::Floor($Rams)
        $CPUs = (Get-WmiObject Win32_Processor | Measure-Object -Property LoadPercentage -Average | Select Average).Average
        $CPU = [Math]::Floor($CPUs)
        $LimitCPUz = ']].. LimitCPU ..[['
        $LihatIP = ']].. Lihatin ..[['

        if($CPU -le $LimitCPUz){
            $Mention = ']]..ingfo..[['
        }else{
            $Mention = 'Cek CPU Ngab <@]].. userdc ..[[> !'
        }

        if($LihatIP -match "Lihatin"){
            $YourIP = $ip
        }else{
            $YourIP = 'IP Disembunyikan'
        }

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[['
        $color       = ']]..Warna..[['


        $footerObject = [PSCustomObject]@{
            text = 'Rotation Farm by Ohdear#2320' + "`n" + '(Time : ]]..myJam..[[:]]..myMenit..[[)'
            icon_url = ']].. Thumbs ..[['
        }

        $thumbnailObject = [PSCustomObject]@{
            url = ']].. Thumbs ..[['
        }

        $authorObject = [PSCustomObject]@{
            name = "]]..Judulz..[[ || Author : Ohdear#2320 "
            url = "https://discord.gg/TjVwdgma74"
            icon_url = "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/dwaddwa.jpeg"
        }

        $fieldArray = @(
            @{
                name = "]]..emot_bot..[[ Bot Name"
                value = "]]..getBot().name..[["
                inline = "false"
            }
            @{
                name = "]]..emot_world..[[ ]]..GetNameID(seed)..[["
                value = "]]..ShowSeed..[["
                inline = "true"
            }
            @{
                name = "]]..emot_tas..[[ Backpack (Seed)"
                value = "]]..findItem(seed)..[[ ]]..GetNameID(seed)..[["
                inline = "true"
            }
            @{
                name = "]]..emot_world..[[ Detail Kordinat"
                value = "]]..InfoDrop()..[["
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

            'username' = ']]..getBot().name..[[|OD2320'
            'content' = $Mention

        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method ]]..methodz..[[ -ContentType 'application/json'
        ]]
        local pipe = io.popen("powershell -command -", "w")
        pipe:write(script)
        pipe:close()

    elseif hookURL == WebhookPack then
        if HookIDPack ~= "XXX" then
            URLWeb = hookURL.."/messages/"..HookIDPack
            methodz = "Patch"
        else
            URLWeb = hookURL
            methodz = "Post"
        end
        local script = [[

        $w = "]]..URLWeb..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $interface = Get-NetConnectionProfile
        $ip = Get-NetIPAddress -InterfaceAlias $interface.InterfaceAlias -AddressFamily IPv4 | ForEach-Object IPAddress
        $CompObject = Get-WmiObject -Class WIN32_OperatingSystem
        $Rams = ((($CompObject.TotalVisibleMemorySize - $CompObject.FreePhysicalMemory)*100)/ $CompObject.TotalVisibleMemorySize)
        $Ram = [Math]::Floor($Rams)
        $CPUs = (Get-WmiObject Win32_Processor | Measure-Object -Property LoadPercentage -Average | Select Average).Average
        $CPU = [Math]::Floor($CPUs)
        $LimitCPUz = ']].. LimitCPU ..[['
        $LihatIP = ']].. Lihatin ..[['

        if($CPU -le $LimitCPUz){
            $Mention = ']]..ingfo..[['
        }else{
            $Mention = 'Cek CPU Ngab <@]].. userdc ..[[> !'
        }

        if($LihatIP -match "Lihatin"){
            $YourIP = $ip
        }else{
            $YourIP = 'IP Disembunyikan'
        }

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[['
        $color       = ']]..Warna..[['


        $footerObject = [PSCustomObject]@{
            text = 'Rotation Farm by Ohdear#2320' + "`n" + '(Time : ]]..myJam..[[:]]..myMenit..[[)'
            icon_url = ']].. Thumbs ..[['
        }

        $thumbnailObject = [PSCustomObject]@{
            url = ']].. Thumbs ..[['
        }

        $authorObject = [PSCustomObject]@{
            name = "]]..Judulz..[[ || Author : Ohdear#2320 "
            url = "https://discord.gg/TjVwdgma74"
            icon_url = "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/dwaddwa.jpeg"
        }

        $fieldArray = @(
            @{
                name = "]]..emot_bot..[[ Bot Name"
                value = "]]..getBot().name..[["
                inline = "false"
            }
            @{
                name = "]]..emot_pack..[[ ]]..namapack:upper()..[["
                value = "]]..ShowPack..[["
                inline = "true"
            }
            @{
                name = ":beginner: Other Information"
                value = "Gems : ]]..SemuaGems()..[[`nOnline/Offline : (]]..StatusAktif("online")..[[/]]..StatusAktif("offline")..[[)"
                inline = "true"
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

            'username' = ']]..getBot().name..[[|OD2320'
            'content' = $Mention

        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method ]]..methodz..[[ -ContentType 'application/json'
        ]]
        local pipe = io.popen("powershell -command -", "w")
        pipe:write(script)
        pipe:close()
    end
end
