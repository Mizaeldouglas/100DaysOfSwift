import UIKit



//  ******************************* 01. Arrays  *******************************

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"


let beatles = [john, paul, george, ringo]

beatles[0]
beatles[1]

//  ******************************* 02. Sets  *******************************

let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

print(colors2)

//  ******************************* 03. Tuples  *******************************

var name =  (
	first: "Tailor",
	last: "Swift"
)

print("Nome da Cantora: \(name.0) \(name.last)")


// ******************************* 04. Arrays vs sets vs tuples  *******************************

// Tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
print(address.city)

// Set
let set1 = Set(["aardvark", "astronaut", "azalea"])
print(set1)

//Arrays
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
print(pythons[1])



//  ******************************* 05. Dictionaries  *******************************

let heights = [
	"Taylor Swift": 1.78,
	"Ed Sheeran": 1.73
]

heights["Ed Sheeran"]

//  ******************************* 06. Dictionary default values  *******************************

let favoriteIceCream = [
	"Paul": "Chocolate",
	"Sophie": "Vanilla"
]


// Podemos ler o sorvete favorito de Paul assim:
favoriteIceCream["Paul"]

// Mas se tentássemos ler o sorvete favorito de Charlotte, obteríamos nil, o que significa que Swift não tem um valor para essa chave:
favoriteIceCream["Charlotte"]


// Podemos consertar isso dando ao dicionário um valor padrão de “Desconhecido”, de modo que quando nenhum sorvete for encontrado para Charlotte, retornaremos “Desconhecido” em vez de nulo:
favoriteIceCream["Charlotte", default: "Unknown"]

//  ******************************* 07. Creating empty collections  *******************************

// Se você quiser criar uma coleção vazia, basta escrever seu tipo seguido de parênteses de abertura e fechamento. Por exemplo, podemos criar um dicionário vazio com strings para chaves e valores como este:
var teams = [String: String]()

// Podemos então adicionar entradas mais tarde, assim:
teams["Paul"] = "Red"

// Da mesma forma, você pode criar uma matriz vazia para armazenar números inteiros assim:
var results = [Int]()

// A exceção é a criação de um conjunto vazio, que é feito de forma diferente:
var words = Set<String>()
var numbers = Set<Int>()

// Isso ocorre porque o Swift tem uma sintaxe especial somente para dicionários e arrays;
// outros tipos devem usar a sintaxe de colchetes angulares como sets.
// Se você quisesse, poderia criar arrays e dicionários com sintaxe similar:
var scores = Dictionary<String, Int>()
var results1 = Array<Int>()


//  ******************************* 08. Enumerations  *******************************


// Enumerações – geralmente chamadas apenas de enums – são uma maneira de definir grupos de valores
// relacionados de uma forma que os torna mais fáceis de usar.
// Por exemplo, se você quisesse escrever algum código para representar o sucesso ou fracasso de algum 

// trabalho que estivesse fazendo, você poderia representar isso como strings:
let result = "failure"

// Mas o que acontece se alguém acidentalmente usar uma nomenclatura diferente?
let result2 = "failed"
let result3 = "fail"

// Todas essas três são strings diferentes, então elas significam coisas diferentes.
// Com enums, podemos definir um tipo Result que pode ser sucesso ou falha, assim
enum Result {
	case success
	case failure
}

// E agora quando o usamos devemos escolher um desses dois valores:
let result4 = Result.failure


//  ******************************* 09. Enum associated values  *******************************


// Além de armazenar um valor simples, enums também podem armazenar valores associados anexados a cada
// caso. Isso permite que você anexe informações adicionais aos seus enums para que eles possam representar
// dados mais matizados.

// Por exemplo, podemos definir um enum que armazena vários tipos de atividades:
enum Activity {
	case bored
	case running
	case talking
	case singing
}

// Isso nos permite dizer que alguém está falando, mas não sabemos do que está falando, ou podemos saber que
// alguém está correndo, mas não sabemos para onde está correndo.

// Os valores associados a enum nos permitem adicionar esses detalhes adicionais:
enum Activity2 {
	case bored
	case running(destination: String)
	case talking(topic: String)
	case singing(volume: Int)
}

// Agora podemos ser mais precisos – podemos dizer que alguém está falando sobre futebol:
let talking = Activity2.talking(topic: "football")


	//  ******************************* 10. Enum raw values  *******************************


// Às vezes, você precisa ser capaz de atribuir valores a enums para que eles tenham significado. Isso
// permite que você os crie dinamicamente e também os use de maneiras diferentes.

// Por exemplo, você pode criar um enum Planet que armazena valores inteiros para cada um dos seus casos:
enum Planet: Int{
	case mercury
	case venus
	case earth
	case mars
}

// O Swift atribuirá automaticamente a cada um deles um número começando em 0, e você pode usar esse número
// para criar uma instância do caso enum apropriado. Por exemplo, a terra receberá o número 2, então você

// pode escrever isso:
let earth = Planet(rawValue: 2)

// Se quiser, você pode atribuir um ou mais casos a um valor específico, e o Swift gerará o resto. Não é
// muito natural para nós pensar na Terra como o segundo planeta, então você poderia escrever isto:
enum Planet2: Int {
	case mercury = 1
	case venus
	case earth
	case mars
}
