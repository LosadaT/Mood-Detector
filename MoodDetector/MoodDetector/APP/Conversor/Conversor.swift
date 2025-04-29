import Foundation

func braileConvert (texto : String) -> String{
    var output: String = ""
    let dicionario: [Character : String] =
    ["a": "⠁",
     "b":"⠃",
     "c": "⠉",
     "d":"⠙",
     "e": "⠑",
     "f": "⠋",
     "g": "⠛",
     "h": "⠓",
     "i": "⠊",
     "j": "⠚",
     "k": "⠅",
     "l": "⠇",
     "m":"⠍",
     "n":"⠝",
     "o":"⠕",
     "p":"⠏",
     "q":"⠟",
     "r":"⠗",
     "s":"⠎",
     "t":"⠞",
     "u":"⠥",
     "v":"⠧",
     "w":"⠺",
     "x":"⠭",
     "y":"⠽",
     "z":"⠵",
     ",":"⠂",
     ".":".",
     "!":"⠖",
     "?":"⠢",
     "'":"⠠",
     " ":" "
    ]
    
    for char in texto {
        for x in dicionario{
            if(char == x.key){
                output.append(x.value)
            }
        }
    }
    return output
}
