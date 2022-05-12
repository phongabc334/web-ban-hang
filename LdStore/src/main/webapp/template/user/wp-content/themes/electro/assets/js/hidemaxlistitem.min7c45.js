(function(a) {
    a.fn.extend({
        hideMaxListItems: function(b) {
            var c = { max: 3, speed: 1000, moreText: "READ MORE", lessText: "READ LESS", moreHTML: '<p class="maxlist-more"><a href="#"></a></p>' };
            var b = a.extend(c, b);
            return this.each(function() {
                var e = a(this);
                var j = b;
                var d = e.children("li").length;
                var i;
                if (d > 0 && j.speed > 0) { i = Math.round(j.speed / d); if (i < 1) { i = 1 } } else { i = 0 }
                if ((d > 0) && (d > j.max)) {
                    e.children("li").each(function(k) { if ((k + 1) > j.max) { a(this).hide(0) } else { a(this).show(0) } });
                    var h = d - j.max;
                    var g = j.moreText;
                    var f = j.lessText;
                    if (h > 0) {
                        g = g.replace("[COUNT]", h);
                        f = f.replace("[COUNT]", h)
                    }
                    if (e.next(".maxlist-more").length > 0) { e.next(".maxlist-more").show() } else { e.after(j.moreHTML) }
                    e.next(".maxlist-more").children("a").html(g).off("click").on("click", function(n) {
                        var m = a(this);
                        var l = m.parent().prev("ul, ol").children("li");
                        l = l.slice(j.max);
                        if (m.html() == g) {
                            a(this).html(f);
                            var k = 0;
                            (function() { a(l[k++] || []).slideToggle(i, arguments.callee) })()
                        } else {
                            m.html(g);
                            var k = l.length - 1;
                            (function() { a(l[k--] || []).slideToggle(i, arguments.callee) })()
                        }
                        n.preventDefault()
                    })
                } else {
                    if (e.next(".maxlist-more").length > 0) { e.next(".maxlist-more").hide() }
                    e.children("li").each(function(k) { a(this).show(0) })
                }
            })
        }
    })
})(jQuery);