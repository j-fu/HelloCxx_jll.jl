# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule HelloCxx_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("HelloCxx")
JLLWrappers.@generate_main_file("HelloCxx", UUID("a8b3473a-feff-581a-9391-32e70ae76adf"))
end  # module HelloCxx_jll
