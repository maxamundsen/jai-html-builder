main :: () {
    render_example(,,allocator=temp);
}

render_example :: () {
    using components;

    component_tree := Div(
        H1(
            Text("test heading"),
            Text("more test..."),
        ),
        P(Text("Hello, world")),
    );
    print(render_component_tree(component_tree));
}

my_cool_component :: () -> components.Node {
    using components;

    return Div(
        H1(Text("Hi")),
        H2(),
    );
}

components :: #import,file "../module.jai"(HTML_COMPONENTS=true, CSS_MACROS=true);
#import "Basic";