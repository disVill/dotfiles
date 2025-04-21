function 'd c up'
    switch (pwd)
        case '*/pixiv-comic-store'
            docker compose -f my_files/compose.yaml up $args
        case '*/pixiv-comic'
            docker compose up $args
    end
end
