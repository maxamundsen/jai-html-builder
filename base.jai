// "root" element-type Node.
El :: (name: string, children: ..*Node) -> *Node {
    node := New(Node);
    node.type = .ELEMENT;
    node.element.name = name;
    
    element_children: [..]*Node;
    element_attributes: [..]*Node;
    
    for children {
        if it && it.type == .ATTRIBUTE {
            array_add(*element_attributes, it);
        } else if it {
            array_add(*element_children, it);
        }
    }
    
    node.element.children = element_children;
    node.element.attributes = element_attributes;
    
    return node;
}

// Attribute with value
Attr :: (name: string, value: string) -> *Node {
    node := New(Node);
    node.type = .ATTRIBUTE;
    node.attribute.name = name;
    node.attribute.value = value;
    node.attribute.has_value = true;
    return node;
}

// Boolean attribute (no value)
Attr :: (name: string) -> *Node {
    node := New(Node);
    node.type = .ATTRIBUTE;
    node.attribute.name = name;
    node.attribute.value = "";
    node.attribute.has_value = false;
    return node;
}

// Text nodes that "fill in" the contents of element tags
Text :: (content: string) -> *Node {
    node := New(Node);
    node.type = .TEXT;
    node.text.content = content;
    return node;
}

Textf :: (format: string, args: ..Any) -> *Node {
    content := sprint(format, ..args);
    return Text(content);
}

// Raw HTML content (unescaped)
Raw :: (content: string) -> *Node {
    node := New(Node);
    node.type = .RAW;
    node.raw.content = content;
    return node;
}

// Grouping
Group :: (children: ..*Node) -> *Node {
    node := New(Node);
    node.type = .GROUP;
    
    group_children: [..]*Node;
    for children {
        if it array_add(*group_children, it);
    }
    node.group.children = group_children;
    
    return node;
}

Group :: (children: []*Node) -> *Node {
    node := New(Node);
    node.type = .GROUP;
    node.group.children = children;
    return node;
}

// Mapping
Map :: (arr: []$T, cb: (T) -> *Node) -> *Node {
    nodes: [..]*Node;
    
    for arr {
        result := cb(it);
        if result array_add(*nodes, result);
    }
    
    return Group(nodes);
}

MapWithIndex :: (arr: []$T, cb: (T, int) -> *Node) -> *Node {
    nodes: [..]*Node;
    
    for arr {
        result := cb(it, it_index);
        if result array_add(*nodes, result);
    }
    
    return Group(nodes);
}

// Conditionals
If :: (cond: bool, el: *Node) -> *Node {
    if cond {
        return el;
    } else {
        return null;
    }
}

Iff :: (cond: bool, cb: () -> *Node) -> *Node {
    if cond {
        return cb();
    } else {
        return null;
    }
}

IfElse :: (cond: bool, el_true: *Node, el_false: *Node) -> *Node {
    if cond {
        return el_true;
    } else {
        return el_false;
    }
}

IffElse :: (cond: bool, cb_true: () -> *Node, cb_false: () -> *Node) -> *Node {
    if cond {
        return cb_true();
    } else {
        return cb_false();
    }
}