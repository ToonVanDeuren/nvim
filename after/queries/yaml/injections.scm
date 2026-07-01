; extends

; Crossplane function-go-templating: inject the Go template parser into the
; `template: |` block scalar used by GoTemplate/Inline pipeline steps.
; Only block *scalars* are matched, so `template:` mapping/sequence values
; (e.g. ExternalSecret `template.metadata`) are left as plain YAML.
((block_mapping_pair
   key: (flow_node) @_key
   value: (block_node (block_scalar) @injection.content))
 (#eq? @_key "template")
 (#set! injection.language "gotmpl"))
