# Instrucciones para montar tu sitio Hugo
# ==========================================

# 1. Ya has hecho esto:
#    hugo new site enrikealonso.com
#    cd enrikealonso.com
#    git init
#    git submodule add https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod

# 2. Reemplaza el hugo.toml por defecto con el que te he dado:
#    cp hugo.toml enrikealonso.com/hugo.toml
#    (o copia el contenido manualmente)

# 3. Crea la estructura de contenido:
mkdir -p content/blog
mkdir -p content/labs
mkdir -p content/search

# 4. Copia los archivos de contenido:
#    - about.md       → content/about.md
#    - primer-post.md → content/blog/por-que-empiezo-esto.md

# 5. Crea el archivo de búsqueda (necesario para PaperMod search):
cat > content/search.md << 'EOF'
---
title: "Buscar"
layout: "search"
placeholder: "buscar..."
---
EOF

# 6. Crea un _index.md para la sección blog:
cat > content/blog/_index.md << 'EOF'
---
title: "Blog"
description: "Artículos sobre bases de datos, sistemas e infraestructura"
---
EOF

# 7. Crea un _index.md para la sección labs:
cat > content/labs/_index.md << 'EOF'
---
title: "Labs"
description: "Pruebas de concepto, benchmarks y experimentos"
---
EOF

# 8. Prueba en local:
#    hugo server -D
#    Abre http://localhost:1313 en tu navegador

# 9. Cuando estés contento, genera el sitio:
#    hugo
#    (el resultado estará en la carpeta /public)
