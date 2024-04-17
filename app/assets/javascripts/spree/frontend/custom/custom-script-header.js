
var Loader = {
    settings: {
        scripts: {
            carousel_articles: {
                postload: true
            },
            carousel_products: {
                postload: true
            },
            carousel_brands: {
                postload: true
            }
        },
        styles: {
            theme: {
                loaded_class: 'css-theme-loaded'
            },
            theme_05: {
                loaded_class: 'css-theme-loaded'
            },
            theme_06: {
                loaded_class: 'css-theme-loaded'
            },
            theme_07: {
                loaded_class: 'css-theme-loaded'
            },
            theme_08: {
                loaded_class: 'css-theme-loaded'
            },
            theme_10: {
                loaded_class: 'css-theme-loaded'
            },
            theme_11: {
                loaded_class: 'css-theme-loaded'
            },
            theme_12: {
                loaded_class: 'css-theme-loaded'
            },
            theme_14: {
                loaded_class: 'css-theme-loaded'
            },
            theme_15: {
                loaded_class: 'css-theme-loaded'
            },
            text_font: {
                loaded_class: 'text-font-loaded'
            }
        }
    },
    main: {
        scripts: ['vendor', 'theme'],
        styles: []
    },
    includes: {
        scripts: {
            //plugins
            plugin_popper: 'scripts/plugin.popper.min.js',
            plugin_tippy: 'scripts/plugin.tippy.all.min.js',
            plugin_fotorama: 'scripts/plugin.fotorama.min.js',
            plugin_instafeed: 'scripts/plugin.instafeed.min.js',
            plugin_ion_range_slider: 'scripts/plugin.ion-range-slider.min.js',
            plugin_masonry: 'scripts/plugin.masonry.min.js',
            plugin_revolution_slider: 'scripts/plugin.revolution-slider.min.js',
            plugin_sticky_sidebar: 'scripts/plugin.sticky-sidebar.min.js',
            //global
            vendor: 'scripts/vendor.min.js',
            theme: 'scripts/theme.min.js',
            //modules
            tooltip: 'scripts/module.tooltip.min.js',
            buttons_blocks_visibility: 'scripts/module.buttons-blocks-visibility.min.js',
            collections: 'scripts/module.collections.min.js',
            dynamic_checkout: 'scripts/module.dynamic-checkout.min.js',
            masonry: 'scripts/module.masonry.min.js',
            notifications: 'scripts/module.notifications.min.js',
            parallax: 'scripts/module.parallax.min.js',
            popup_subscription: 'scripts/module.popup-subscription.min.js',
            product_footbar: 'scripts/module.product-footbar.min.js',
            products_view: 'scripts/module.products-view.min.js',
            range_of_price: 'scripts/module.range-of-price.min.js',
            shipping_rates_calculation: 'scripts/module.shipping-rates-calculation.min.js',
            sticky_header: 'scripts/module.sticky-header.min.js',
            sticky_sidebar: 'scripts/module.sticky-sidebar.min.js',
            tabs: 'scripts/module.tabs.min.js',
            trigger: 'scripts/module.trigger.min.js',
            presentation: 'scripts/module.presentation.min.js',
            //sections
            header: 'scripts/section.header.min.js',
            article_body: 'scripts/section.article-body.min.js',
            blog_body: 'scripts/section.blog-body.min.js',
            blog_sidebar: 'scripts/section.blog-sidebar.min.js',
            carousel_articles: 'scripts/section.carousel-articles.min.js',
            carousel_brands: 'scripts/section.carousel-brands.min.js',
            carousel_products: 'scripts/section.carousel-products.min.js',
            collection_body: 'scripts/section.collection-body.min.js',
            collection_head: 'scripts/section.collection-head.min.js',
            collection_sidebar: 'scripts/section.collection-sidebar.min.js',
            gallery: 'scripts/section.gallery.min.js',
            home_builder: 'scripts/section.home-builder.min.js',
            list_collections: 'scripts/section.list-collections.min.js',
            lookbook: 'scripts/section.lookbook.min.js',
            password_page_content: 'scripts/section.password-page-content.min.js',
            product: 'scripts/section.product.min.js',
            slider_revolution: 'scripts/section.slider-revolution.min.js',
            sorting_collections: 'scripts/section.sorting-collections.min.js',
            footbar: 'scripts/section.footbar.min.js',
            footer: 'scripts/section.footer.min.js'
        },
        styles: {
            //plugins
            plugin_tippy: 'styles/plugin.tippy.min.css',
            plugin_fotorama: 'styles/plugin.fotorama.min.css',
            plugin_ion_range_slider: 'styles/plugin.ion-range-slider.min.css',
            plugin_revolution: 'styles/plugin.revolution.min.css',
            plugin_slick: 'styles/plugin.slick.min.css',
            //font
            text_font: 'https://fonts.googleapis.com/css?family=Archivo',
            //global
            theme: 'styles/theme.min.css',
            theme_05: 'styles/theme-05.min.css',
            theme_06: 'styles/theme-06.min.css',
            theme_07: 'styles/theme-07.min.css',
            theme_08: 'styles/theme-08.min.css',
            theme_10: 'styles/theme-10.min.css',
            theme_11: 'styles/theme-11.min.css',
            theme_12: 'styles/theme-12.min.css',
            theme_14: 'styles/theme-14.min.css',
            theme_15: 'styles/theme-15.min.css'
        }
    },
    deps: {
        scripts: {
            //plugins
            plugin_tippy: ['plugin_popper'],
            //global
            theme: ['vendor', 'plugin_fotorama'],
            //modules
            tooltip: ['plugin_tippy'],
            collections: ['products_view'],
            masonry: ['plugin_masonry'],
            product_footbar: ['trigger'],
            range_of_price: ['plugin_ion_range_slider', 'collections'],
            sticky_sidebar: ['plugin_sticky_sidebar', 'sticky_header'],
            tabs: ['plugin_sticky_sidebar', 'sticky_sidebar', 'sticky_header'],
            //sections
            header: ['sticky_header'],
            blog_body: ['masonry'],
            blog_sidebar: ['sticky_sidebar'],
            collection_sidebar: ['range_of_price'],
            gallery: ['plugin_fotorama', 'masonry'],
            home_builder: ['plugin_instafeed', 'plugin_revolution_slider', 'parallax'],
            list_collections: ['masonry'],
            product: ['sticky_sidebar', 'tabs'],
            article_body: ['plugin_slick'],
            footbar: ['notifications', 'trigger', 'product_footbar']
        },
        styles: {
            //global
            theme: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme2: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme3: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme4: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme5: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme6: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme7: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme8: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme9: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme10: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme11: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme12: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme13: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme14: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick'],
            theme15: ['plugin_tippy', 'plugin_fotorama', 'plugin_ion_range_slider', 'plugin_revolution', 'plugin_slick']
        }
    },
    callback: {
        scripts: {},
        styles: {}
    },
    queue: {
        scripts: [],
        styles: []
    },
    initials: {
        scripts: {},
        styles: {}
    },
    loaded: {
        scripts: {},
        styles: {}
    },
    postload: {
        scripts: {},
        styles: {}
    },
    postload_offset: 400,
    require: function (obj) {
        var namespace;

        switch (obj.type) {
            case 'style':
            {
                namespace = 'styles';
                break;
            }
            case 'script':
            {
                namespace = 'scripts';
                break;
            }
        }

        if (this.settings[namespace][obj.name] && this.settings[namespace][obj.name].postload) {
            this.postload[namespace][obj.name] = true;
        } else {
            this.queue[namespace].push(obj.name);
        }

        this.initials[namespace][obj.name] = true;
    },
    load: function () {
        var _ = this,
                namespace,
                i;

        for (namespace in this.main) {
            for (i = this.main[namespace].length - 1; i >= 0; i--) {
                this.initials[namespace][this.main[namespace][i]] = true;
                this.queue[namespace].unshift(this.main[namespace][i]);
            }
        }

        function load_deps(namespace, name, j, callback) {
            if (j < _.deps[namespace][name].length) {
                if (_.initials[namespace][_.deps[namespace][name][j]]) {
                    delete _.initials[namespace][_.deps[namespace][name][j]];

                    _.loadTag(namespace, _.deps[namespace][name][j], function () {
                        j++;
                        load_deps(namespace, name, j, callback);
                    });
                } else {
                    j++;
                    load_deps(namespace, name, j, callback);
                }
            } else {
                if (callback) {
                    callback();
                }
            }
        };

        function iteration(namespace, i, callback) {
            var name = _.queue[namespace][i];

            if (i < _.queue[namespace].length && !_.initials[namespace][name]) {
                i++;
                iteration(namespace, i, callback);

                return;
            }

            function load_deps_callback() {
                delete _.initials[namespace][name];

                _.loadTag(namespace, name, function () {
                    i++;
                    iteration(namespace, i, callback);
                });
            };

            if (i < _.queue[namespace].length) {
                if (_.checkDeps(namespace, name)) {
                    load_deps_callback();
                } else {
                    load_deps(namespace, name, 0, load_deps_callback);
                }
            } else if (callback) {
                callback();
            }
        };

        iteration('styles', 0, function () {
            iteration('scripts', 0);
        });

        function onPostload(namespace, name, elems, j) {
            for (namespace in _.postload) {
                for (name in _.postload[namespace]) {
                    elems = document.querySelectorAll('[data-postload="' + name + '"]');

                    for (j = 0; j < elems.length; j++) {
                        if (elems[j].getBoundingClientRect().top < window.innerHeight + _.postload_offset) {
                            _.queue[namespace].push(name);
                            delete _.postload[namespace][name];
                            continue;
                        }
                    }
                }
            }

            iteration('styles', 0, function () {
                iteration('scripts', 0);
            });
        };

        window.addEventListener('load', function () {
            onPostload();

            window.addEventListener('scroll', onPostload);
        });
    },
    checkDeps: function (namespace, name) {
        var deps = this.deps[namespace][name],
                clear_deps = true,
                i;

        if (deps) {
            for (i = 0; i < deps.length; i++) {
                if (!this.loaded[namespace][deps[i]] && this.initials[namespace][deps[i]] !== undefined) {
                    clear_deps = false;
                    break;
                }
            }
        }

        return clear_deps;
    },
    loadTag: function (namespace, name, callback) {
        var _ = this,
                tag,
                onload;

        if(document.querySelectorAll('[data-loader-name="' + namespace + '_' + name + '"]').length) {
            /*console.log('double loading');*/
            return;
        }

        onload = function () {
            _.loaded[namespace][name] = true;

            if (_.settings[namespace][name]) {
                if (_.settings[namespace][name].loaded_class) {
                    document.getElementsByTagName('html')[0].classList.add(_.settings[namespace][name].loaded_class);
                }
            }

            if (callback) {
                if (_.callback[namespace][name]) {
                    _.callback[namespace][name](_);
                }

                callback();
            }

            //console.debug('loaded:', namespace, name);
        };

        switch (namespace) {
            case 'styles':
            {
                tag = this.buildStyle(name, onload);
                break;
            }
            case 'scripts':
            {
                tag = this.buildScript(name, onload);
                break;
            }
        }

        tag.setAttribute('data-loader-name', namespace + '_' + name);

        document.head.insertBefore(tag, document.head.childNodes[document.head.childNodes.length - 1].nextSibling);
    },
    buildScript: function (name, onload) {
        var tag = document.createElement('script');

        tag.onload = onload;

        tag.async = true;
        tag.src = this.includes.scripts[name];

        return tag;
    },
    buildStyle: function (name, onload) {
        var tag = document.createElement('link');

        tag.onload = onload;

        tag.rel = 'stylesheet';
        tag.href = this.includes.styles[name];

        return tag;
    }
};

window.page = {
    default: {}
};