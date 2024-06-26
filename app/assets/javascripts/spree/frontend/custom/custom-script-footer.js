document.documentElement.className = document.documentElement.className.replace('no-js', 'js');

    var body = document.body,
        style_file = body.getAttribute('data-style-file');

    Loader.require({
        type: 'style',
        name: 'text_font'
    });
    Loader.require({
        type: 'style',
        name: 'plugin_tippy'
    });
    Loader.require({
        type: 'style',
        name: style_file ? style_file : 'theme'
    });
    window.theme = {
        strings: {
            general: {
                popups: {
                    cart: {
                        item_added: "{{ title }} was added to your shopping cart.",
                        limit_is_exceeded: "Maximum product quantity in cart items {{ limit }} added.",
                        count: "({{ count }})"
                    },
                    wishlist: {
                        count: "({{ count }})"
                    },
                    compare: {
                        count: "({{ count }})"
                    },
                    confirm_transfer_data: {
                        info: "{{ title }}: {{ count }} {{ name }}",
                        wishlist_title: "Wishlist",
                        compare_title: "Compare",
                        name_single: "product",
                        name_plural: "products"
                    }
                }
            },
            layout: {
                cart: {
                    items_count: {
                        one: "item",
                        other: "items"
                    }
                }
            },
            addToCart: "{\u0026quot;title\u0026quot;=\u0026gt;\u0026quot;ADD TO CART\u0026quot;, \u0026quot;added\u0026quot;=\u0026gt;\u0026quot;ADDED\u0026quot;, \u0026quot;sold_out\u0026quot;=\u0026gt;\u0026quot;SOLD OUT\u0026quot;}",
            soldOut: "translation missing: en.products.product.sold_out",
            unavailable: "translation missing: en.products.product.unavailable",
            priceSaleSeparator: " from",
            availability_value_in_stock: "In stock ({{ count }} {{ item }})",
            availability_value_out_stock: "Out of Stock",
            stock_countdown: {
                title: "Hurry! Only {{ quantity }} Left in Stock!"
            },
            countdown: {
                years: "YRS",
                months: "MTH",
                weeks: "WK",
                days: "DAYS",
                hours: "HRS",
                minutes: "MIN",
                seconds: "SEC"
            },
            text_countdown: {
                hours: "Hours",
                minutes: "Minutes",
                days_of_week: {
                    sunday: "Sunday",
                    monday: "Monday",
                    tuesday: "Tuesday",
                    wednesday: "Wednesday",
                    thursday: "Thursday",
                    friday: "Friday",
                    saturday: "Saturday"
                }
            },
            header: {
                cart_count_desktop: "Bag ({{ count }})"
            },
            label: {
                sale: "-{{ percent }}%"
            },
            cart: {
                general: {
                    shipping_calculator_data_info: "There is one shipping rate available for {{ data }}.",
                    free_shipping_html: "Spend {{ value }} to Free Shipping",
                    free_shipping_complete: "Free Shipping"
                }
            },

        },
        multipleСurrencies: true,
        moneyFormat: "\u003cspan class=money\u003e${{amount}}\u003c\/span\u003e",
        customer: false,
        animations: {
            css: {
                duration: 0.3
            },
            tooltip: {
                type: "scale",
                inertia: true,
                show_duration: 0.2,
                hide_duration: 0.1
            },
            sticky_header: {
                duration: 0.2,
                opacity: 0.9
            },
            header_tape: {
                duration: 0
            },
            menu: {
                duration: 0.4
            },
            dropdown: {
                duration: 0.3
            },
            accordion: {
                duration: 0.4
            },
            footbar_product: {
                duration: 0.4
            },
            tabs: {
                duration: 0.4,
                scroll_duration: 0.4
            },
            backtotop: {
                scroll_duration: 0.4
            }
        }
    };
    Loader.require({
        type: 'script',
        name: 'plugin_popper'
    });
    Loader.require({
        type: 'script',
        name: 'plugin_tippy'
    });
    Loader.require({
        type: 'script',
        name: 'tooltip'
    });

    Loader.load();