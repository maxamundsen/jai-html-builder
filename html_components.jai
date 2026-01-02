// --------------------
// HTML ELEMENTS
// --------------------

// Doctype returns a special kind of Node that prefixes its sibling with the: string "<!doctype html>".
Doctype :: (sibling: *Node) -> *Node {
    node := New(Node);
    node.type = .DOCTYPE;
    node.doctype.sibling = sibling;
    return node;
}

A :: (children: ..*Node) -> *Node {
	return El("a", ..children);
}

Address :: (children: ..*Node) -> *Node {
	return El("address", ..children);
}

Area :: (children: ..*Node) -> *Node {
	return El("area", ..children);
}

Article :: (children: ..*Node) -> *Node {
	return El("article", ..children);
}

Aside :: (children: ..*Node) -> *Node {
	return El("aside", ..children);
}

Audio :: (children: ..*Node) -> *Node {
	return El("audio", ..children);
}

Base :: (children: ..*Node) -> *Node {
	return El("base", ..children);
}

BlockQuote :: (children: ..*Node) -> *Node {
	return El("blockquote", ..children);
}

Body :: (children: ..*Node) -> *Node {
	return El("body", ..children);
}

Br :: (children: ..*Node) -> *Node {
	return El("br", ..children);
}

Button :: (children: ..*Node) -> *Node {
	return El("button", ..children);
}

Canvas :: (children: ..*Node) -> *Node {
	return El("canvas", ..children);
}

Cite :: (children: ..*Node) -> *Node {
	return El("cite", ..children);
}

// Called `CodeEl` instead of `Code` because `Code` is a primative Jai type.
CodeEl :: (children: ..*Node) -> *Node {
	return El("code", ..children);
}

Col :: (children: ..*Node) -> *Node {
	return El("col", ..children);
}

ColGroup :: (children: ..*Node) -> *Node {
	return El("colgroup", ..children);
}

DataEl :: (children: ..*Node) -> *Node {
	return El("data", ..children);
}

DataList :: (children: ..*Node) -> *Node {
	return El("datalist", ..children);
}

Details :: (children: ..*Node) -> *Node {
	return El("details", ..children);
}

Dialog :: (children: ..*Node) -> *Node {
	return El("dialog", ..children);
}

Div :: (children: ..*Node) -> *Node {
	return El("div", ..children);
}

Dl :: (children: ..*Node) -> *Node {
	return El("dl", ..children);
}

Embed :: (children: ..*Node) -> *Node {
	return El("embed", ..children);
}

Form :: (children: ..*Node) -> *Node {
	return El("form", ..children);
}

FieldSet :: (children: ..*Node) -> *Node {
	return El("fieldset", ..children);
}

Figure :: (children: ..*Node) -> *Node {
	return El("figure", ..children);
}

Footer :: (children: ..*Node) -> *Node {
	return El("footer", ..children);
}

Head :: (children: ..*Node) -> *Node {
	return El("head", ..children);
}

Header :: (children: ..*Node) -> *Node {
	return El("header", ..children);
}

HGroup :: (children: ..*Node) -> *Node {
	return El("hgroup", ..children);
}

Hr :: (children: ..*Node) -> *Node {
	return El("hr", ..children);
}

HTML :: (children: ..*Node) -> *Node {
	return El("html", ..children);
}

IFrame :: (children: ..*Node) -> *Node {
	return El("iframe", ..children);
}

Img :: (children: ..*Node) -> *Node {
	return El("img", ..children);
}

Input :: (children: ..*Node) -> *Node {
	return El("input", ..children);
}

Label :: (children: ..*Node) -> *Node {
	return El("label", ..children);
}

Legend :: (children: ..*Node) -> *Node {
	return El("legend", ..children);
}

Li :: (children: ..*Node) -> *Node {
	return El("li", ..children);
}

Link :: (children: ..*Node) -> *Node {
	return El("link", ..children);
}

Main :: (children: ..*Node) -> *Node {
	return El("main", ..children);
}

Menu :: (children: ..*Node) -> *Node {
	return El("menu", ..children);
}

Meta :: (children: ..*Node) -> *Node {
	return El("meta", ..children);
}

Meter :: (children: ..*Node) -> *Node {
	return El("meter", ..children);
}

Nav :: (children: ..*Node) -> *Node {
	return El("nav", ..children);
}

NoScript :: (children: ..*Node) -> *Node {
	return El("noscript", ..children);
}

Object :: (children: ..*Node) -> *Node {
	return El("object", ..children);
}

Ol :: (children: ..*Node) -> *Node {
	return El("ol", ..children);
}

OptGroup :: (children: ..*Node) -> *Node {
	return El("optgroup", ..children);
}

Option :: (children: ..*Node) -> *Node {
	return El("option", ..children);
}

P :: (children: ..*Node) -> *Node {
	return El("p", ..children);
}

Param :: (children: ..*Node) -> *Node {
	return El("param", ..children);
}

Picture :: (children: ..*Node) -> *Node {
	return El("picture", ..children);
}

Pre :: (children: ..*Node) -> *Node {
	return El("pre", ..children);
}

Progress :: (children: ..*Node) -> *Node {
	return El("progress", ..children);
}

Script :: (children: ..*Node) -> *Node {
	return El("script", ..children);
}

Section :: (children: ..*Node) -> *Node {
	return El("section", ..children);
}

Select :: (children: ..*Node) -> *Node {
	return El("select", ..children);
}

Source :: (children: ..*Node) -> *Node {
	return El("source", ..children);
}

Span :: (children: ..*Node) -> *Node {
	return El("span", ..children);
}

StyleEl :: (children: ..*Node) -> *Node {
	return El("style", ..children);
}

Summary :: (children: ..*Node) -> *Node {
	return El("summary", ..children);
}

SVG :: (children: ..*Node) -> *Node {
	return El("svg", ..children);
}

Table :: (children: ..*Node) -> *Node {
	return El("table", ..children);
}

TBody :: (children: ..*Node) -> *Node {
	return El("tbody", ..children);
}

Td :: (children: ..*Node) -> *Node {
	return El("td", ..children);
}

Textarea :: (children: ..*Node) -> *Node {
	return El("textarea", ..children);
}

TFoot :: (children: ..*Node) -> *Node {
	return El("tfoot", ..children);
}

Th :: (children: ..*Node) -> *Node {
	return El("th", ..children);
}

THead :: (children: ..*Node) -> *Node {
	return El("thead", ..children);
}

Tr :: (children: ..*Node) -> *Node {
	return El("tr", ..children);
}

Ul :: (children: ..*Node) -> *Node {
	return El("ul", ..children);
}

Wbr :: (children: ..*Node) -> *Node {
	return El("wbr", ..children);
}

Abbr :: (children: ..*Node) -> *Node {
	return El("abbr", Group(children));
}

B :: (children: ..*Node) -> *Node {
	return El("b", Group(children));
}

Caption :: (children: ..*Node) -> *Node {
	return El("caption", Group(children));
}

Dd :: (children: ..*Node) -> *Node {
	return El("dd", Group(children));
}

Del :: (children: ..*Node) -> *Node {
	return El("del", Group(children));
}

Dfn :: (children: ..*Node) -> *Node {
	return El("dfn", Group(children));
}

Dt :: (children: ..*Node) -> *Node {
	return El("dt", Group(children));
}

Em :: (children: ..*Node) -> *Node {
	return El("em", Group(children));
}

FigCaption :: (children: ..*Node) -> *Node {
	return El("figcaption", Group(children));
}

H1 :: (children: ..*Node) -> *Node {
	return El("h1", Group(children));
}

H2 :: (children: ..*Node) -> *Node {
	return El("h2", Group(children));
}

H3 :: (children: ..*Node) -> *Node {
	return El("h3", Group(children));
}

H4 :: (children: ..*Node) -> *Node {
	return El("h4", Group(children));
}

H5 :: (children: ..*Node) -> *Node {
	return El("h5", Group(children));
}

H6 :: (children: ..*Node) -> *Node {
	return El("h6", Group(children));
}

I :: (children: ..*Node) -> *Node {
	return El("i", Group(children));
}

Ins :: (children: ..*Node) -> *Node {
	return El("ins", Group(children));
}

Kbd :: (children: ..*Node) -> *Node {
	return El("kbd", Group(children));
}

Mark :: (children: ..*Node) -> *Node {
	return El("mark", Group(children));
}

Q :: (children: ..*Node) -> *Node {
	return El("q", Group(children));
}

S :: (children: ..*Node) -> *Node {
	return El("s", Group(children));
}

Samp :: (children: ..*Node) -> *Node {
	return El("samp", Group(children));
}

Small :: (children: ..*Node) -> *Node {
	return El("small", Group(children));
}

Strong :: (children: ..*Node) -> *Node {
	return El("strong", Group(children));
}

Sub :: (children: ..*Node) -> *Node {
	return El("sub", Group(children));
}

Sup :: (children: ..*Node) -> *Node {
	return El("sup", Group(children));
}

Time :: (children: ..*Node) -> *Node {
	return El("time", Group(children));
}

TitleEl :: (children: ..*Node) -> *Node {
	return El("title", Group(children));
}

U :: (children: ..*Node) -> *Node {
	return El("u", Group(children));
}

Var :: (children: ..*Node) -> *Node {
	return El("var", Group(children));
}

Video :: (children: ..*Node) -> *Node {
	return El("video", Group(children));
}

// --------------------
// HTML ATTRIBUTES
// --------------------

Async :: () -> *Node {
	return Attr("async");
}

AutoFocus :: () -> *Node {
	return Attr("autofocus");
}

AutoPlay :: () -> *Node {
	return Attr("autoplay");
}

Checked :: () -> *Node {
	return Attr("checked");
}

Controls :: () -> *Node {
	return Attr("controls");
}

CrossOrigin :: (v: string) -> *Node {
	return Attr("crossorigin", v);
}

DateTime :: (v: string) -> *Node {
	return Attr("datetime", v);
}

Defer :: () -> *Node {
	return Attr("defer");
}

Disabled :: () -> *Node {
	return Attr("disabled");
}

Draggable :: (v: string) -> *Node {
	return Attr("draggable", v);
}

Loop :: () -> *Node {
	return Attr("loop");
}

Multiple :: () -> *Node {
	return Attr("multiple");
}

Muted :: () -> *Node {
	return Attr("muted");
}

PlaysInline :: () -> *Node {
	return Attr("playsinline");
}

ReadOnly :: () -> *Node {
	return Attr("readonly");
}

Required :: () -> *Node {
	return Attr("required");
}

Selected :: () -> *Node {
	return Attr("selected");
}

Accept :: (v: string) -> *Node {
	return Attr("accept", v);
}

Action :: (v: string) -> *Node {
	return Attr("action", v);
}

Alt :: (v: string) -> *Node {
	return Attr("alt", v);
}

// Aria attributes automatically have their name prefixed with "aria-".
Aria :: (name: string, v: string) -> *Node {
	return Attr(sprint("aria-%", name), v);
}

As :: (v: string) -> *Node {
	return Attr("as", v);
}

AutoComplete :: (v: string) -> *Node {
	return Attr("autocomplete", v);
}

Charset :: (v: string) -> *Node {
	return Attr("charset", v);
}

CiteAttr :: (v: string) -> *Node {
	return Attr("cite", v);
}

Class :: (v: string) -> *Node {
	return Attr("class", v);
}

Cols :: (v: string) -> *Node {
	return Attr("cols", v);
}

ColSpan :: (v: string) -> *Node {
	return Attr("colspan", v);
}

Content :: (v: string) -> *Node {
	return Attr("content", v);
}

// Data attributes automatically have their name prefixed with "data-".
Data :: (name: string, v: string) -> *Node {
	return Attr(sprint("data-%", name), v);
}

// DataAttr attributes automatically have their name prefixed with "data-".
//
// Deprecated: Use [Data] instead.
DataAttr :: (name: string, v: string) -> *Node {
	return Data(name, v);
}

For :: (v: string) -> *Node {
	return Attr("for", v);
}

FormAttr :: (v: string) -> *Node {
	return Attr("form", v);
}

Height :: (v: string) -> *Node {
	return Attr("height", v);
}

Hidden :: (v: string) -> *Node {
	return Attr("hidden", v);
}

Href :: (v: string) -> *Node {
	return Attr("href", v);
}

ID :: (v: string) -> *Node {
	return Attr("id", v);
}

Integrity :: (v: string) -> *Node {
	return Attr("integrity", v);
}

LabelAttr :: (v: string) -> *Node {
	return Attr("label", v);
}

Lang :: (v: string) -> *Node {
	return Attr("lang", v);
}

List :: (v: string) -> *Node {
	return Attr("list", v);
}

Loading :: (v: string) -> *Node {
	return Attr("loading", v);
}

Max :: (v: string) -> *Node {
	return Attr("max", v);
}

MaxLength :: (v: string) -> *Node {
	return Attr("maxlength", v);
}

Method :: (v: string) -> *Node {
	return Attr("method", v);
}

Min :: (v: string) -> *Node {
	return Attr("min", v);
}

MinLength :: (v: string) -> *Node {
	return Attr("minlength", v);
}

Name :: (v: string) -> *Node {
	return Attr("name", v);
}

Pattern :: (v: string) -> *Node {
	return Attr("pattern", v);
}

Placeholder :: (v: string) -> *Node {
	return Attr("placeholder", v);
}

Poster :: (v: string) -> *Node {
	return Attr("poster", v);
}

Preload :: (v: string) -> *Node {
	return Attr("preload", v);
}

Rel :: (v: string) -> *Node {
	return Attr("rel", v);
}

Role :: (v: string) -> *Node {
	return Attr("role", v);
}

Rows :: (v: string) -> *Node {
	return Attr("rows", v);
}

RowSpan :: (v: string) -> *Node {
	return Attr("rowspan", v);
}

Src :: (v: string) -> *Node {
	return Attr("src", v);
}

SrcSet :: (v: string) -> *Node {
	return Attr("srcset", v);
}

Step :: (v: string) -> *Node {
	return Attr("step", v);
}

Style :: (v: string) -> *Node {
	return Attr("style", v);
}

TabIndex :: (v: string) -> *Node {
	return Attr("tabindex", v);
}

Target :: (v: string) -> *Node {
	return Attr("target", v);
}

Title :: (v: string) -> *Node {
	return Attr("title", v);
}

Type :: (v: string) -> *Node {
	return Attr("type", v);
}

Value :: (v: string) -> *Node {
	return Attr("value", v);
}

Width :: (v: string) -> *Node {
	return Attr("width", v);
}

EncType :: (v: string) -> *Node {
	return Attr("enctype", v);
}

Dir :: (v: string) -> *Node {
	return Attr("dir", v);
}

#scope_module

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