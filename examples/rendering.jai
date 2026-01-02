main :: () {
    render_example(,,allocator=temp);
}

render_example :: () {
    my_string := "hello!";

    component_tree := Div(
        my_cool_component(
            P(Text("Foobar")),
            Br()
        ),
        H1(
            Text("test heading"),
            Text("more test..."),
        ),
        P(Text(my_string)),
    );

    print(render(component_tree));
}

my_cool_component :: (children: ..*Node) -> *Node {
    return Div(
        Group(children),
        H1(Text("Hi")),
        H2(),
    );
}

#import,file "../module.jai"(HTML_COMPONENTS=true, CSS_MACROS=true);
#import "Basic";