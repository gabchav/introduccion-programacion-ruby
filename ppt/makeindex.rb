archivos    = Dir.entries(".")
noDeseados  = [".", "..", "makeindex.rb"]
ppts        = archivos - noDeseados
baseUrl     = "https://stgoneira.github.io/introduccion-programacion-ruby/ppt/"

File.open("README.md", "w") { |f|
    f.write "# Presentaciones\n\n"
    ppts.each_with_index { |ppt, index|
        f.write "- [#{ppt}](#{baseUrl}#{ppt}) \n"
    }
}
