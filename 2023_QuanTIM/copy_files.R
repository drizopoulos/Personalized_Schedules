rmarkdown::render_site(input = "./2023_QuanTIM", encoding = 'UTF-8')


dirs <- list.dirs(path = "./2023_QuanTIM/_site/", full.names = FALSE, recursive = TRUE)
files <- list.files(path = "./2023_QuanTIM/_site/", include.dirs = TRUE, recursive = TRUE)

for (i in seq_along(dirs)) {
    dir.create(path = paste0("./docs/", dirs[i]), showWarnings = FALSE)
}

for (i in seq_along(files)) {
    file.copy(from = paste0("./2023_QuanTIM/_site/", files[i]), 
              to = paste0("./docs/", files[i]), overwrite = TRUE)
}



