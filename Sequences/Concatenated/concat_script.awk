#!/usr/bin/awk -f

/^>/    { header = $0 }
!/^>/   { sequence[header] = sequence[header] $0 }

END {
    for (head in sequence) {
        printf("%s\n%s\n", head, sequence[head])
    }
}
