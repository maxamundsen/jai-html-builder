#module_parameters(HTML_COMPONENTS := true, CSS_MACROS := false);

Node :: struct {
    Builder: String_Builder;
    Children: []Node;
}


// We need to differentiate between different "node types"
// For instance you may have a node such as `Div`, which renders to "<div></div>"
// or you may have a such
Node_Type :: enum {
    ELEMENT;
    ATTRIBUTE;
}

// "root" element-type Node.
El :: (name: string, children: ..*Node) -> *Node {
    return null;
}

// "Root" attribute-type Node. Renders to the following:
// <div value1="value2"></div>
Attr :: (name: string, value1: string, value2: string) -> *Node {
    return null;
}

// Attributes may only have 1 value. This will render to the following:
// <div value></div>
Attr :: (name: string, value: string) -> *Node {
    return null;
}

// Text nodes that "fill in" the contents of element tags
Text :: (input: string) -> *Node {
    return null;
}

Textf :: (format: string, input: string) -> *Node {
    return null;
}

// Grouping
Group :: (children: ..*Node) -> *Node {
    return null;
}

Group :: (children: []*Node) -> *Node {
    return null;
}

// Rendering
render_component_tree :: (tree: *Node) -> string {
    return "";
}

#scope_file

// If HTML element
is_void_html_element :: (name: string) -> bool {
    if name == {
	   case "area";    return true;
	   case "base";    return true;
	   case "br";      return true;
	   case "col";     return true;
	   case "command"; return true;
	   case "embed";   return true;
	   case "hr";      return true;
	   case "img";     return true;
	   case "input";   return true;
	   case "keygen";  return true;
	   case "link";    return true;
	   case "meta";    return true;
	   case "param";   return true;
	   case "source";  return true;
	   case "track";   return true;
	   case "wbr";     return true;
    }

    return false;
}

#if HTML_COMPONENTS {
    #load "html_components.jai";
}

#if CSS_MACROS {
    #load "css_inline.jai";
}

#import "Basic";