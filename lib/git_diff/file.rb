      @binary = false
      elsif (binary_info = string.match(/^Binary files (.+) and (.+) differ$/))
        @a_path = binary_info[1] == '/dev/null' ? '/dev/null' : binary_info[1].sub('a/', '')
        @b_path = binary_info[2] == '/dev/null' ? '/dev/null' : binary_info[2].sub('b/', '')
        @binary = true
    def binary?
      @binary
    end

        @a_blob, @b_blob, b_mode = *blob_info.captures
        @b_mode = b_mode if b_mode
        true
      when new_file_info = /^new file mode ([0-9]{6})$/.match(string)
        @b_mode = new_file_info[1]