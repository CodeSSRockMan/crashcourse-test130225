#!/bin/bash

# Lista de nombres de scripts
scripts=(
    "01_simple_pattern_search"
    "02_case_insensitive_search"
    "03_count_matches"
    "04_search_multiple_files"
    "05_invert_match"
    "06_search_using_wildcards"
    "07_match_whole_words_only"
    "08_display_line_numbers"
    "09_find_files_with_specific_content"
    "10_pipe_with_grep"
    "11_regex_character_classes"
    "12_regex_repetition"
    "13_anchors_in_regex"
    "14_find_emails_using_regex"
    "15_extract_ip_addresses"
    "16_search_for_urls"
    "17_find_dates_in_specific_format"
    "18_regex_alternation"
    "19_using_extended_regex"
    "20_combine_grep_with_other_commands"
)

# Crear cada archivo con extensión .sh
for script in "${scripts[@]}"; do
    filename="${script}.sh"
    if [[ -f "$filename" ]]; then
        echo "El archivo $filename ya existe, saltando..."
    else
        touch "$filename"
        echo "#!/bin/bash" > "$filename"
        echo "# Script: $filename" >> "$filename"
        chmod +x "$filename"
        echo "Archivo creado: $filename"
    fi
done

