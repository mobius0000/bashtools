create_message()
{
    if [[ $# -ge 2 ]]                                                                                         
        then                                                                                                  
            case "${1,,}" in                                                                                  
                0|'ok')                                                                                       
                    echo -e "${colors[2]}$(date "+%m/%d/%y %H:%M:%S") - ${2,,}.${colors[0]}"                  
                ;;                                                                                            
                1|'warn')                                                                                     
                    echo -e "${colors[3]}$(date "+%m/%d/%y %H:%M:%S") - ${2,,}.${colors[0]}"                  
                ;;                                                                                            
                2|'err')                                                                                      
                    echo -e "${colors[1]}$(date "+%m/%d/%y %H:%M:%S") - ${2,,}.${colors[0]}"                  
                ;;                                                                                            
                3|'info')                                                                                     
                    echo -e "${colors[4]}$(date "+%m/%d/%y %H:%M:%S") - $2.${colors[0]}"                      
                ;;
                                                                                            
                                                                                                            
                *)                                                                                            
                    echo -e "${colors[1]}[-] An error occured.${colors[0]}"                                   
                ;;                                                                                            
            esac                                                                                                                                                                                            
        else                                                                                                  
            echo -e "${colors[1]}[-] error: usage <create_message> [type] [message].${colors[0]}"             
            exit 1                                                                                            
    fi  
}
                                                                                                      