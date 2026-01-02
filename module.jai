#module_parameters(HTML_COMPONENTS := true, CSS_MACROS := false);

Node_Type :: enum {
    ELEMENT;
    ATTRIBUTE;
    TEXT;
    RAW;
    GROUP;
    DOCTYPE;
}

Node :: struct {
    type: Node_Type;

    union {
        element: struct {
            name: string;
            children: []*Node;
            attributes: []*Node;
        };

        attribute: struct {
            name: string;
            value: string;
            has_value: bool;
        };

        text: struct {
            content: string;
        };

        raw: struct {
            content: string;
        };

        group: struct {
            children: []*Node;
        };

        doctype: struct {
            sibling: *Node;
        };
    }
}

// Rendering
render :: (node: *Node) -> string {
    builder: String_Builder;
    render_to_builder(node, *builder);
    append(*builder, "\n");
    return builder_to_string(*builder);
}

render_to_builder :: (node: *Node, builder: *String_Builder) {
    if !node return;

    if node.type == {
        case .ELEMENT;
            append(builder, "<");
            append(builder, node.element.name);

            for node.element.attributes {
                render_attribute(it, builder);
            }

            append(builder, ">");

            if !is_void_html_element(node.element.name) {
                for node.element.children {
                    render_to_builder(it, builder);
                }

                append(builder, "</");
                append(builder, node.element.name);
                append(builder, ">");
            }

        case .ATTRIBUTE;

        case .TEXT;
            escaped := html_escape(node.text.content);
            append(builder, escaped);

        case .RAW;
            append(builder, node.raw.content);

        case .GROUP;
            for node.group.children {
                render_to_builder(it, builder);
            }

        case .DOCTYPE;
            append(builder, "<!DOCTYPE html>");
            if node.doctype.sibling {
                render_to_builder(node.doctype.sibling, builder);
            }
    }
}

render_attribute :: (attr: *Node, builder: *String_Builder) {
    if attr.type != .ATTRIBUTE return;

    append(builder, " ");
    append(builder, attr.attribute.name);

    if attr.attribute.has_value {
        append(builder, "=\"");
        escaped := html_escape(attr.attribute.value);
        append(builder, escaped);
        append(builder, "\"");
    }
}

html_escape :: (input: string) -> string {
    builder: String_Builder;

    for 0..input.count-1 {
        c := input[it];
        if c == {
            case #char "<";
                append(*builder, "&lt;");
            case #char ">";
                append(*builder, "&gt;");
            case #char "&";
                append(*builder, "&amp;");
            case #char "\"";
                append(*builder, "&quot;");
            case #char "'";
                append(*builder, "&#39;");
            case;
                append(*builder, c);
        }
    }

    return builder_to_string(*builder);
}

#scope_file

#load "base.jai";

#if HTML_COMPONENTS {
    #load "html_components.jai";
}

#if CSS_MACROS {
    #load "css_inline.jai";
}

#import "Basic";