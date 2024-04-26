import gleam/io
import gleam/string
import gleam/int
import gleam/list
import gleam/result

// You can use print statements as follows for debugging, they'll be visible when running tests.
io.println("Logs from your program will appear here!")

// Uncomment this block to pass the first stage
// pub fn main() {
//   let args = io.argv()
//   
//   case args {
//     [_, database_file_path, command] -> {
//       case command {
//         ".dbinfo" -> {
//           io.open(database_file_path, io.Read)
//           |> result.then(fn(file) { 
//             io.seek(file, 16)
//             |> result.then(fn(_) {
//               io.read_bytes(file, 2) 
//               |> result.then(fn(bytes) {
//                 let page_size = bytes 
//                   |> list.reverse
//                   |> int.from_bytes_be
//                 io.println(string.concat(["database page size: ", int.to_string(page_size)]))
//                 |> result.map(fn(_) { io.close(file) })
//               })
//             })
//           })
//           |> result.unwrap(crash)
//         }
//         _ -> io.println(string.concat(["Invalid command: ", command]))
//       }
//     }
//     _ -> io.println("Usage: gleam run database_file_path command")
//   }
// } 