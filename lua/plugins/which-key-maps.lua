local wk = require("which-key")
return {
    wk.register({
        ["<leader>"] = {
            ------------ código -----------------------
            c = {
                name = "código  ",
                a = { ":Lspsaga code_action<cr>", "acción" },
                p = { ":Lspsaga peek_definition<cr>", "ver definición (float)" },
                h = {
                    name = "Jerarquia llamadas  ",
                    i = { ":Lspsaga incoming_calls<cr>", "entrante  " },
                    o = { ":Lspsaga outgoing_calls<cr>", "saliente  " },
                },
                f = { ":Lspsaga finder<cr>", "finder" },
                o = { ":Lspsaga outline<cr>", "abrir/cerrar outline" },
                s = { ":Telescope lsp_document_symbols<cr>", "Document Symbols" },
                g = { ":Telescope live_grep<cr>", "buscar texto en archivos" },
                n = { ":enew<cr>", "nuevo archivo" },
                -- o = { function() vim.lsp.buf.format { async = true } end, "Formatear" },
            },
            ------------ ir en código -----------------------
            n = {
                name = "siguiente",
                d = { ":Lspsaga diagnostic_jump_next<cr>", "diagnostico" },
                c = { ":Gitsigns next_hunk<cr>", "cambio" },
            },
            p = {
                name = "anterior",
                d = { ":Lspsaga diagnostic_jump_prev<cr>", "diagnostico" },
                c = { ":Gitsigns prev_hunk<cr>", "cambio" },
            },
            ------------ git -----------------------
            i = {
                name = "git 󰊢 ",
                -- gitsigns --
                h = {
                    name = "hunk (cambios)",
                    p = { ":Gitsigns prev_hunk<cr>", "cambio anterior" },
                    n = { ":Gitsigns next_hunk<cr>", "siguiente cambio" },
                    v = { ":Gitsigns preview_hunk<cr>", "previsualizar cambio" },
                    r = { ":Gitsigns reset_hunk<cr>", "revertir cambio" },
                },
                b = { ":Gitsigns blame_line<cr>", "ver quien realizó cambio en esa línea" },
                -- vim fugitive --
                s = { ":G status<cr>", "status" },
                o = { ":G log<cr>", "log" },
                d = { ":G diff<cr>", "diff" },
                a = { ":G add .<cr>", "add (todo)" },
                e = { ":G restore --staged .<cr>", "restore (todo)" },
                c = { ":G commit<cr>", "commit" },
                l = { ":G pull origin main<cr>", "pull (origin/maim)" },
                p = { ":G push origin main<cr>", "push (origin/main)" },
            },
            ------------ ejecutar -----------------------
            r = {
                name = "ejecutar código  ",
                o = { ":w<cr>:!go run %<cr>", "golang" }
            },
            ------------ acceso rápido -----------------------
            h = { ":Telescope oldfiles<cr>", "historial  " },
            f = { ":Telescope find_files<cr>", "econtrar 󰈞 " },
            t = { ":Telescope colorscheme<cr>", "color  " },
            --------------- modo zen --------------------------
            s = { ":Telescope lsp_document_symbols<cr>", "lsp symbols  " },
            -- s = { ":Telescope lsp_dynamic_workspace_symbols<cr>", "lsp symbols  " },
            g = { ":Telescope live_grep<cr>", "grep  " },
            b = { ":Telescope buffers<cr>", "buffers  " },
            o = { ":Lspsaga outline<cr>", "outline" },
        },
    }),
}
