on run
    -- Define the writing tools with their exact menu paths
    set writingTools to {¬
        {name:"Compose...", id:"compose"}, ¬
        {name:"Proofread", id:"proofread"}, ¬
        {name:"Rewrite", id:"rewrite"}, ¬
        {name:"Make Friendly", id:"make_friendly"}, ¬
        {name:"Make Professional", id:"make_professional"}, ¬
        {name:"Make Concise", id:"make_concise"}, ¬
        {name:"Summarize", id:"summarize"}, ¬
        {name:"Create Key Points", id:"create_key_points"}, ¬
        {name:"Make List", id:"make_list"}, ¬
        {name:"Make Table", id:"make_table"} ¬
    }

    -- Create JSON for Alfred script filter
    set json to "{"
    set json to json & "\"items\": ["

    repeat with tool in writingTools
        set json to json & "{"
        set json to json & "\"uid\": \"" & (id of tool) & "\","
        set json to json & "\"title\": \"" & (name of tool) & "\","
        set json to json & "\"arg\": \"" & (name of tool) & "\","
        set json to json & "\"subtitle\": \"Apply " & (name of tool) & " to selected text\""
        set json to json & "},"
    end repeat

    set json to text 1 thru -2 of json
    set json to json & "]}"

    return json
end run
