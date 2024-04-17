/*
Unobtrusive JavaScript
https://github.com/rails/rails/blob/main/actionview/app/assets/javascripts
Released under the MIT license
 */;

(function() {
  var context = this;

  (function() {
    (function() {
      this.Rails = {
        linkClickSelector: 'a[data-confirm], a[data-method], a[data-remote]:not([disabled]), a[data-disable-with], a[data-disable]',
        buttonClickSelector: {
          selector: 'button[data-remote]:not([form]), button[data-confirm]:not([form])',
          exclude: 'form button'
        },
        inputChangeSelector: 'select[data-remote], input[data-remote], textarea[data-remote]',
        formSubmitSelector: 'form:not([data-turbo=true])',
        formInputClickSelector: 'form:not([data-turbo=true]) input[type=submit], form:not([data-turbo=true]) input[type=image], form:not([data-turbo=true]) button[type=submit], form:not([data-turbo=true]) button:not([type]), input[type=submit][form], input[type=image][form], button[type=submit][form], button[form]:not([type])',
        formDisableSelector: 'input[data-disable-with]:enabled, button[data-disable-with]:enabled, textarea[data-disable-with]:enabled, input[data-disable]:enabled, button[data-disable]:enabled, textarea[data-disable]:enabled',
        formEnableSelector: 'input[data-disable-with]:disabled, button[data-disable-with]:disabled, textarea[data-disable-with]:disabled, input[data-disable]:disabled, button[data-disable]:disabled, textarea[data-disable]:disabled',
        fileInputSelector: 'input[name][type=file]:not([disabled])',
        linkDisableSelector: 'a[data-disable-with], a[data-disable]',
        buttonDisableSelector: 'button[data-remote][data-disable-with], button[data-remote][data-disable]'
      };

    }).call(this);
  }).call(context);

  var Rails = context.Rails;

  (function() {
    (function() {
      var nonce;

      nonce = null;

      Rails.loadCSPNonce = function() {
        var ref;
        return nonce = (ref = document.querySelector("meta[name=csp-nonce]")) != null ? ref.content : void 0;
      };

      Rails.cspNonce = function() {
        return nonce != null ? nonce : Rails.loadCSPNonce();
      };

    }).call(this);
    (function() {
      var expando, m;

      m = Element.prototype.matches || Element.prototype.matchesSelector || Element.prototype.mozMatchesSelector || Element.prototype.msMatchesSelector || Element.prototype.oMatchesSelector || Element.prototype.webkitMatchesSelector;

      Rails.matches = function(element, selector) {
        if (selector.exclude != null) {
          return m.call(element, selector.selector) && !m.call(element, selector.exclude);
        } else {
          return m.call(element, selector);
        }
      };

      expando = '_ujsData';

      Rails.getData = function(element, key) {
        var ref;
        return (ref = element[expando]) != null ? ref[key] : void 0;
      };

      Rails.setData = function(element, key, value) {
        if (element[expando] == null) {
          element[expando] = {};
        }
        return element[expando][key] = value;
      };

      Rails.isContentEditable = function(element) {
        var isEditable;
        isEditable = false;
        while (true) {
          if (element.isContentEditable) {
            isEditable = true;
            break;
          }
          element = element.parentElement;
          if (!element) {
            break;
          }
        }
        return isEditable;
      };

      Rails.$ = function(selector) {
        return Array.prototype.slice.call(document.querySelectorAll(selector));
      };

    }).call(this);
    (function() {
      var $, csrfParam, csrfToken;

      $ = Rails.$;

      csrfToken = Rails.csrfToken = function() {
        var meta;
        meta = document.querySelector('meta[name=csrf-token]');
        return meta && meta.content;
      };

      csrfParam = Rails.csrfParam = function() {
        var meta;
        meta = document.querySelector('meta[name=csrf-param]');
        return meta && meta.content;
      };

      Rails.CSRFProtection = function(xhr) {
        var token;
        token = csrfToken();
        if (token != null) {
          return xhr.setRequestHeader('X-CSRF-Token', token);
        }
      };

      Rails.refreshCSRFTokens = function() {
        var param, token;
        token = csrfToken();
        param = csrfParam();
        if ((token != null) && (param != null)) {
          return $('form input[name="' + param + '"]').forEach(function(input) {
            return input.value = token;
          });
        }
      };

    }).call(this);
    (function() {
      var CustomEvent, fire, matches, preventDefault;

      matches = Rails.matches;

      CustomEvent = window.CustomEvent;

      if (typeof CustomEvent !== 'function') {
        CustomEvent = function(event, params) {
          var evt;
          evt = document.createEvent('CustomEvent');
          evt.initCustomEvent(event, params.bubbles, params.cancelable, params.detail);
          return evt;
        };
        CustomEvent.prototype = window.Event.prototype;
        preventDefault = CustomEvent.prototype.preventDefault;
        CustomEvent.prototype.preventDefault = function() {
          var result;
          result = preventDefault.call(this);
          if (this.cancelable && !this.defaultPrevented) {
            Object.defineProperty(this, 'defaultPrevented', {
              get: function() {
                return true;
              }
            });
          }
          return result;
        };
      }

      fire = Rails.fire = function(obj, name, data) {
        var event;
        event = new CustomEvent(name, {
          bubbles: true,
          cancelable: true,
          detail: data
        });
        obj.dispatchEvent(event);
        return !event.defaultPrevented;
      };

      Rails.stopEverything = function(e) {
        fire(e.target, 'ujs:everythingStopped');
        e.preventDefault();
        e.stopPropagation();
        return e.stopImmediatePropagation();
      };

      Rails.delegate = function(element, selector, eventType, handler) {
        return element.addEventListener(eventType, function(e) {
          var target;
          target = e.target;
          while (!(!(target instanceof Element) || matches(target, selector))) {
            target = target.parentNode;
          }
          if (target instanceof Element && handler.call(target, e) === false) {
            e.preventDefault();
            return e.stopPropagation();
          }
        });
      };

    }).call(this);
    (function() {
      var AcceptHeaders, CSRFProtection, createXHR, cspNonce, fire, prepareOptions, processResponse;

      cspNonce = Rails.cspNonce, CSRFProtection = Rails.CSRFProtection, fire = Rails.fire;

      AcceptHeaders = {
        '*': '*/*',
        text: 'text/plain',
        html: 'text/html',
        xml: 'application/xml, text/xml',
        json: 'application/json, text/javascript',
        script: 'text/javascript, application/javascript, application/ecmascript, application/x-ecmascript'
      };

      Rails.ajax = function(options) {
        var xhr;
        options = prepareOptions(options);
        xhr = createXHR(options, function() {
          var ref, response;
          response = processResponse((ref = xhr.response) != null ? ref : xhr.responseText, xhr.getResponseHeader('Content-Type'));
          if (Math.floor(xhr.status / 100) === 2) {
            if (typeof options.success === "function") {
              options.success(response, xhr.statusText, xhr);
            }
          } else {
            if (typeof options.error === "function") {
              options.error(response, xhr.statusText, xhr);
            }
          }
          return typeof options.complete === "function" ? options.complete(xhr, xhr.statusText) : void 0;
        });
        if ((options.beforeSend != null) && !options.beforeSend(xhr, options)) {
          return false;
        }
        if (xhr.readyState === XMLHttpRequest.OPENED) {
          return xhr.send(options.data);
        }
      };

      prepareOptions = function(options) {
        options.url = options.url || location.href;
        options.type = options.type.toUpperCase();
        if (options.type === 'GET' && options.data) {
          if (options.url.indexOf('?') < 0) {
            options.url += '?' + options.data;
          } else {
            options.url += '&' + options.data;
          }
        }
        if (AcceptHeaders[options.dataType] == null) {
          options.dataType = '*';
        }
        options.accept = AcceptHeaders[options.dataType];
        if (options.dataType !== '*') {
          options.accept += ', */*; q=0.01';
        }
        return options;
      };

      createXHR = function(options, done) {
        var xhr;
        xhr = new XMLHttpRequest();
        xhr.open(options.type, options.url, true);
        xhr.setRequestHeader('Accept', options.accept);
        if (typeof options.data === 'string') {
          xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
        }
        if (!options.crossDomain) {
          xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
          CSRFProtection(xhr);
        }
        xhr.withCredentials = !!options.withCredentials;
        xhr.onreadystatechange = function() {
          if (xhr.readyState === XMLHttpRequest.DONE) {
            return done(xhr);
          }
        };
        return xhr;
      };

      processResponse = function(response, type) {
        var parser, script;
        if (typeof response === 'string' && typeof type === 'string') {
          if (type.match(/\bjson\b/)) {
            try {
              response = JSON.parse(response);
            } catch (error) {}
          } else if (type.match(/\b(?:java|ecma)script\b/)) {
            script = document.createElement('script');
            script.setAttribute('nonce', cspNonce());
            script.text = response;
            document.head.appendChild(script).parentNode.removeChild(script);
          } else if (type.match(/\b(xml|html|svg)\b/)) {
            parser = new DOMParser();
            type = type.replace(/;.+/, '');
            try {
              response = parser.parseFromString(response, type);
            } catch (error) {}
          }
        }
        return response;
      };

      Rails.href = function(element) {
        return element.href;
      };

      Rails.isCrossDomain = function(url) {
        var e, originAnchor, urlAnchor;
        originAnchor = document.createElement('a');
        originAnchor.href = location.href;
        urlAnchor = document.createElement('a');
        try {
          urlAnchor.href = url;
          return !(((!urlAnchor.protocol || urlAnchor.protocol === ':') && !urlAnchor.host) || (originAnchor.protocol + '//' + originAnchor.host === urlAnchor.protocol + '//' + urlAnchor.host));
        } catch (error) {
          e = error;
          return true;
        }
      };

    }).call(this);
    (function() {
      var matches, toArray;

      matches = Rails.matches;

      toArray = function(e) {
        return Array.prototype.slice.call(e);
      };

      Rails.serializeElement = function(element, additionalParam) {
        var inputs, params;
        inputs = [element];
        if (matches(element, 'form')) {
          inputs = toArray(element.elements);
        }
        params = [];
        inputs.forEach(function(input) {
          if (!input.name || input.disabled) {
            return;
          }
          if (matches(input, 'fieldset[disabled] *')) {
            return;
          }
          if (matches(input, 'select')) {
            return toArray(input.options).forEach(function(option) {
              if (option.selected) {
                return params.push({
                  name: input.name,
                  value: option.value
                });
              }
            });
          } else if (input.checked || ['radio', 'checkbox', 'submit'].indexOf(input.type) === -1) {
            return params.push({
              name: input.name,
              value: input.value
            });
          }
        });
        if (additionalParam) {
          params.push(additionalParam);
        }
        return params.map(function(param) {
          if (param.name != null) {
            return (encodeURIComponent(param.name)) + "=" + (encodeURIComponent(param.value));
          } else {
            return param;
          }
        }).join('&');
      };

      Rails.formElements = function(form, selector) {
        if (matches(form, 'form')) {
          return toArray(form.elements).filter(function(el) {
            return matches(el, selector);
          });
        } else {
          return toArray(form.querySelectorAll(selector));
        }
      };

    }).call(this);
    (function() {
      var allowAction, fire, stopEverything;

      fire = Rails.fire, stopEverything = Rails.stopEverything;

      Rails.handleConfirm = function(e) {
        if (!allowAction(this)) {
          return stopEverything(e);
        }
      };

      Rails.confirm = function(message, element) {
        return confirm(message);
      };

      allowAction = function(element) {
        var answer, callback, message;
        message = element.getAttribute('data-confirm');
        if (!message) {
          return true;
        }
        answer = false;
        if (fire(element, 'confirm')) {
          try {
            answer = Rails.confirm(message, element);
          } catch (error) {}
          callback = fire(element, 'confirm:complete', [answer]);
        }
        return answer && callback;
      };

    }).call(this);
    (function() {
      var disableFormElement, disableFormElements, disableLinkElement, enableFormElement, enableFormElements, enableLinkElement, formElements, getData, isContentEditable, isXhrRedirect, matches, setData, stopEverything;

      matches = Rails.matches, getData = Rails.getData, setData = Rails.setData, stopEverything = Rails.stopEverything, formElements = Rails.formElements, isContentEditable = Rails.isContentEditable;

      Rails.handleDisabledElement = function(e) {
        var element;
        element = this;
        if (element.disabled) {
          return stopEverything(e);
        }
      };

      Rails.enableElement = function(e) {
        var element;
        if (e instanceof Event) {
          if (isXhrRedirect(e)) {
            return;
          }
          element = e.target;
        } else {
          element = e;
        }
        if (isContentEditable(element)) {
          return;
        }
        if (matches(element, Rails.linkDisableSelector)) {
          return enableLinkElement(element);
        } else if (matches(element, Rails.buttonDisableSelector) || matches(element, Rails.formEnableSelector)) {
          return enableFormElement(element);
        } else if (matches(element, Rails.formSubmitSelector)) {
          return enableFormElements(element);
        }
      };

      Rails.disableElement = function(e) {
        var element;
        element = e instanceof Event ? e.target : e;
        if (isContentEditable(element)) {
          return;
        }
        if (matches(element, Rails.linkDisableSelector)) {
          return disableLinkElement(element);
        } else if (matches(element, Rails.buttonDisableSelector) || matches(element, Rails.formDisableSelector)) {
          return disableFormElement(element);
        } else if (matches(element, Rails.formSubmitSelector)) {
          return disableFormElements(element);
        }
      };

      disableLinkElement = function(element) {
        var replacement;
        if (getData(element, 'ujs:disabled')) {
          return;
        }
        replacement = element.getAttribute('data-disable-with');
        if (replacement != null) {
          setData(element, 'ujs:enable-with', element.innerHTML);
          element.innerHTML = replacement;
        }
        element.addEventListener('click', stopEverything);
        return setData(element, 'ujs:disabled', true);
      };

      enableLinkElement = function(element) {
        var originalText;
        originalText = getData(element, 'ujs:enable-with');
        if (originalText != null) {
          element.innerHTML = originalText;
          setData(element, 'ujs:enable-with', null);
        }
        element.removeEventListener('click', stopEverything);
        return setData(element, 'ujs:disabled', null);
      };

      disableFormElements = function(form) {
        return formElements(form, Rails.formDisableSelector).forEach(disableFormElement);
      };

      disableFormElement = function(element) {
        var replacement;
        if (getData(element, 'ujs:disabled')) {
          return;
        }
        replacement = element.getAttribute('data-disable-with');
        if (replacement != null) {
          if (matches(element, 'button')) {
            setData(element, 'ujs:enable-with', element.innerHTML);
            element.innerHTML = replacement;
          } else {
            setData(element, 'ujs:enable-with', element.value);
            element.value = replacement;
          }
        }
        element.disabled = true;
        return setData(element, 'ujs:disabled', true);
      };

      enableFormElements = function(form) {
        return formElements(form, Rails.formEnableSelector).forEach(enableFormElement);
      };

      enableFormElement = function(element) {
        var originalText;
        originalText = getData(element, 'ujs:enable-with');
        if (originalText != null) {
          if (matches(element, 'button')) {
            element.innerHTML = originalText;
          } else {
            element.value = originalText;
          }
          setData(element, 'ujs:enable-with', null);
        }
        element.disabled = false;
        return setData(element, 'ujs:disabled', null);
      };

      isXhrRedirect = function(event) {
        var ref, xhr;
        xhr = (ref = event.detail) != null ? ref[0] : void 0;
        return (xhr != null ? xhr.getResponseHeader("X-Xhr-Redirect") : void 0) != null;
      };

    }).call(this);
    (function() {
      var isContentEditable, stopEverything;

      stopEverything = Rails.stopEverything;

      isContentEditable = Rails.isContentEditable;

      Rails.handleMethod = function(e) {
        var csrfParam, csrfToken, form, formContent, href, link, method;
        link = this;
        method = link.getAttribute('data-method');
        if (!method) {
          return;
        }
        if (isContentEditable(this)) {
          return;
        }
        href = Rails.href(link);
        csrfToken = Rails.csrfToken();
        csrfParam = Rails.csrfParam();
        form = document.createElement('form');
        formContent = "<input name='_method' value='" + method + "' type='hidden' />";
        if ((csrfParam != null) && (csrfToken != null) && !Rails.isCrossDomain(href)) {
          formContent += "<input name='" + csrfParam + "' value='" + csrfToken + "' type='hidden' />";
        }
        formContent += '<input type="submit" />';
        form.method = 'post';
        form.action = href;
        form.target = link.target;
        form.innerHTML = formContent;
        form.style.display = 'none';
        document.body.appendChild(form);
        form.querySelector('[type="submit"]').click();
        return stopEverything(e);
      };

    }).call(this);
    (function() {
      var ajax, fire, getData, isContentEditable, isCrossDomain, isRemote, matches, serializeElement, setData, stopEverything,
        slice = [].slice;

      matches = Rails.matches, getData = Rails.getData, setData = Rails.setData, fire = Rails.fire, stopEverything = Rails.stopEverything, ajax = Rails.ajax, isCrossDomain = Rails.isCrossDomain, serializeElement = Rails.serializeElement, isContentEditable = Rails.isContentEditable;

      isRemote = function(element) {
        var value;
        value = element.getAttribute('data-remote');
        return (value != null) && value !== 'false';
      };

      Rails.handleRemote = function(e) {
        var button, data, dataType, element, method, url, withCredentials;
        element = this;
        if (!isRemote(element)) {
          return true;
        }
        if (!fire(element, 'ajax:before')) {
          fire(element, 'ajax:stopped');
          return false;
        }
        if (isContentEditable(element)) {
          fire(element, 'ajax:stopped');
          return false;
        }
        withCredentials = element.getAttribute('data-with-credentials');
        dataType = element.getAttribute('data-type') || 'script';
        if (matches(element, Rails.formSubmitSelector)) {
          button = getData(element, 'ujs:submit-button');
          method = getData(element, 'ujs:submit-button-formmethod') || element.method;
          url = getData(element, 'ujs:submit-button-formaction') || element.getAttribute('action') || location.href;
          if (method.toUpperCase() === 'GET') {
            url = url.replace(/\?.*$/, '');
          }
          if (element.enctype === 'multipart/form-data') {
            data = new FormData(element);
            if (button != null) {
              data.append(button.name, button.value);
            }
          } else {
            data = serializeElement(element, button);
          }
          setData(element, 'ujs:submit-button', null);
          setData(element, 'ujs:submit-button-formmethod', null);
          setData(element, 'ujs:submit-button-formaction', null);
        } else if (matches(element, Rails.buttonClickSelector) || matches(element, Rails.inputChangeSelector)) {
          method = element.getAttribute('data-method');
          url = element.getAttribute('data-url');
          data = serializeElement(element, element.getAttribute('data-params'));
        } else {
          method = element.getAttribute('data-method');
          url = Rails.href(element);
          data = element.getAttribute('data-params');
        }
        ajax({
          type: method || 'GET',
          url: url,
          data: data,
          dataType: dataType,
          beforeSend: function(xhr, options) {
            if (fire(element, 'ajax:beforeSend', [xhr, options])) {
              return fire(element, 'ajax:send', [xhr]);
            } else {
              fire(element, 'ajax:stopped');
              return false;
            }
          },
          success: function() {
            var args;
            args = 1 <= arguments.length ? slice.call(arguments, 0) : [];
            return fire(element, 'ajax:success', args);
          },
          error: function() {
            var args;
            args = 1 <= arguments.length ? slice.call(arguments, 0) : [];
            return fire(element, 'ajax:error', args);
          },
          complete: function() {
            var args;
            args = 1 <= arguments.length ? slice.call(arguments, 0) : [];
            return fire(element, 'ajax:complete', args);
          },
          crossDomain: isCrossDomain(url),
          withCredentials: (withCredentials != null) && withCredentials !== 'false'
        });
        return stopEverything(e);
      };

      Rails.formSubmitButtonClick = function(e) {
        var button, form;
        button = this;
        form = button.form;
        if (!form) {
          return;
        }
        if (button.name) {
          setData(form, 'ujs:submit-button', {
            name: button.name,
            value: button.value
          });
        }
        setData(form, 'ujs:formnovalidate-button', button.formNoValidate);
        setData(form, 'ujs:submit-button-formaction', button.getAttribute('formaction'));
        return setData(form, 'ujs:submit-button-formmethod', button.getAttribute('formmethod'));
      };

      Rails.preventInsignificantClick = function(e) {
        var data, insignificantMetaClick, link, metaClick, method, nonPrimaryMouseClick;
        link = this;
        method = (link.getAttribute('data-method') || 'GET').toUpperCase();
        data = link.getAttribute('data-params');
        metaClick = e.metaKey || e.ctrlKey;
        insignificantMetaClick = metaClick && method === 'GET' && !data;
        nonPrimaryMouseClick = (e.button != null) && e.button !== 0;
        if (nonPrimaryMouseClick || insignificantMetaClick) {
          return e.stopImmediatePropagation();
        }
      };

    }).call(this);
    (function() {
      var $, CSRFProtection, delegate, disableElement, enableElement, fire, formSubmitButtonClick, getData, handleConfirm, handleDisabledElement, handleMethod, handleRemote, loadCSPNonce, preventInsignificantClick, refreshCSRFTokens;

      fire = Rails.fire, delegate = Rails.delegate, getData = Rails.getData, $ = Rails.$, refreshCSRFTokens = Rails.refreshCSRFTokens, CSRFProtection = Rails.CSRFProtection, loadCSPNonce = Rails.loadCSPNonce, enableElement = Rails.enableElement, disableElement = Rails.disableElement, handleDisabledElement = Rails.handleDisabledElement, handleConfirm = Rails.handleConfirm, preventInsignificantClick = Rails.preventInsignificantClick, handleRemote = Rails.handleRemote, formSubmitButtonClick = Rails.formSubmitButtonClick, handleMethod = Rails.handleMethod;

      if ((typeof jQuery !== "undefined" && jQuery !== null) && (jQuery.ajax != null)) {
        if (jQuery.rails) {
          throw new Error('If you load both jquery_ujs and rails-ujs, use rails-ujs only.');
        }
        jQuery.rails = Rails;
        jQuery.ajaxPrefilter(function(options, originalOptions, xhr) {
          if (!options.crossDomain) {
            return CSRFProtection(xhr);
          }
        });
      }

      Rails.start = function() {
        if (window._rails_loaded) {
          throw new Error('rails-ujs has already been loaded!');
        }
        window.addEventListener('pageshow', function() {
          $(Rails.formEnableSelector).forEach(function(el) {
            if (getData(el, 'ujs:disabled')) {
              return enableElement(el);
            }
          });
          return $(Rails.linkDisableSelector).forEach(function(el) {
            if (getData(el, 'ujs:disabled')) {
              return enableElement(el);
            }
          });
        });
        delegate(document, Rails.linkDisableSelector, 'ajax:complete', enableElement);
        delegate(document, Rails.linkDisableSelector, 'ajax:stopped', enableElement);
        delegate(document, Rails.buttonDisableSelector, 'ajax:complete', enableElement);
        delegate(document, Rails.buttonDisableSelector, 'ajax:stopped', enableElement);
        delegate(document, Rails.linkClickSelector, 'click', preventInsignificantClick);
        delegate(document, Rails.linkClickSelector, 'click', handleDisabledElement);
        delegate(document, Rails.linkClickSelector, 'click', handleConfirm);
        delegate(document, Rails.linkClickSelector, 'click', disableElement);
        delegate(document, Rails.linkClickSelector, 'click', handleRemote);
        delegate(document, Rails.linkClickSelector, 'click', handleMethod);
        delegate(document, Rails.buttonClickSelector, 'click', preventInsignificantClick);
        delegate(document, Rails.buttonClickSelector, 'click', handleDisabledElement);
        delegate(document, Rails.buttonClickSelector, 'click', handleConfirm);
        delegate(document, Rails.buttonClickSelector, 'click', disableElement);
        delegate(document, Rails.buttonClickSelector, 'click', handleRemote);
        delegate(document, Rails.inputChangeSelector, 'change', handleDisabledElement);
        delegate(document, Rails.inputChangeSelector, 'change', handleConfirm);
        delegate(document, Rails.inputChangeSelector, 'change', handleRemote);
        delegate(document, Rails.formSubmitSelector, 'submit', handleDisabledElement);
        delegate(document, Rails.formSubmitSelector, 'submit', handleConfirm);
        delegate(document, Rails.formSubmitSelector, 'submit', handleRemote);
        delegate(document, Rails.formSubmitSelector, 'submit', function(e) {
          return setTimeout((function() {
            return disableElement(e);
          }), 13);
        });
        delegate(document, Rails.formSubmitSelector, 'ajax:send', disableElement);
        delegate(document, Rails.formSubmitSelector, 'ajax:complete', enableElement);
        delegate(document, Rails.formInputClickSelector, 'click', preventInsignificantClick);
        delegate(document, Rails.formInputClickSelector, 'click', handleDisabledElement);
        delegate(document, Rails.formInputClickSelector, 'click', handleConfirm);
        delegate(document, Rails.formInputClickSelector, 'click', formSubmitButtonClick);
        document.addEventListener('DOMContentLoaded', refreshCSRFTokens);
        document.addEventListener('DOMContentLoaded', loadCSPNonce);
        return window._rails_loaded = true;
      };

      if (window.Rails === Rails && fire(document, 'rails:attachBindings')) {
        Rails.start();
      }

    }).call(this);
  }).call(this);

  if (typeof module === "object" && module.exports) {
    module.exports = Rails;
  } else if (typeof define === "function" && define.amd) {
    define(Rails);
  }
}).call(this);
// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//

;
window.Solidus = {};

Solidus.mountedAt = () => {
  return '/';
};

Solidus.pathFor = (path) => {
  const hostname = window.location.hostname;
  const protocol = window.location.protocol;
  const port = window.location.port;
  const locationOrigin = protocol + '//' + hostname + (port ? ':' + port : '');
  return locationOrigin + Solidus.mountedAt() + path;
};

Solidus.routes = {
  states_search: Solidus.pathFor('api/states'),
  apply_coupon_code: (order_id) => Solidus.pathFor('api/orders/' + order_id + '/coupon_codes')
};




Solidus.disableSaveOnClick = () => {
  const form = document.querySelector('form.edit_order');
  form.addEventListener('submit', () => {
    const elements = form.querySelectorAll('[type="submit"], [type="image"]');
    elements.forEach(element => {
      element.setAttribute('disabled', true);
      element.classList.remove('primary');
      element.classList.add('disabled');
    });
  });
};

window.addEventListener('DOMContentLoaded', () => {
  const termsCheckbox = document.getElementById('accept_terms_and_conditions');

  if (termsCheckbox) {
    const form = termsCheckbox.closest('form');
    const submitButton = form.querySelector('[type="submit"]');
    form.onsubmit = function () {
      if (termsCheckbox.checked) {
        submitButton.innerHTML = 'Submitting...';
        return true;
      } else {
        alert('Please review and accept the Terms of Service');
        submitButton.removeAttribute('disabled');
        submitButton.classList.remove('disabled');
        return false;
      };
    }; 
  };
});
window.addEventListener('DOMContentLoaded', () => {
  if (document.getElementById('checkout_form_address')) {
    // Hidden by default to support browsers with javascript disabled
    document.querySelectorAll('.js-address-fields')
      .forEach(field => field.style.display = 'block');

    const statesCache = {};

    function updateState(stateContainer, countryId) {
      if (statesCache[countryId]) {
        fillStates(stateContainer, countryId);
        return;
      }

      fetch(`${Solidus.routes.states_search}?country_id=${countryId}`)
        .then(response => response.json())
        .then(data => {
          statesCache[countryId] = {
            states: data.states,
            states_required: data.states_required
          };
          fillStates(stateContainer, countryId);
        });
    };

    function fillStates(stateContainer, countryId) {
      const stateData = statesCache[countryId];

      if (!stateData) {
        return;
      }

      const statesRequired = stateData.states_required;
      const states = stateData.states;

      const stateSelect = stateContainer.querySelector('select');
      const stateInput = stateContainer.querySelector('input');

      if (states.length > 0) {
        const selected = parseInt(stateSelect.value);
        stateSelect.innerHTML = '';
        const statesWithBlank = [{ name: '', id: ''}].concat(states);
        statesWithBlank.forEach(state => {
          const selectOption = document.createElement('option');
          selectOption.value = state.id;
          selectOption.innerHTML = state.name;
          if (selected === state.id) {
            selectOption.setAttribute('selected', true);
          }
          stateSelect.appendChild(selectOption);
        })
        stateSelect.style.display = 'block';
        stateSelect.removeAttribute('disabled');
        stateInput.style.display = 'none';
        stateInput.setAttribute('disabled', true);
        stateContainer.style.display = 'block';
        if (statesRequired) {
          stateSelect.classList.add('required');
          stateContainer.classList.add('field-required');
        } else {
          stateSelect.classList.remove('required');
          stateContainer.classList.remove('field-required');
        }
        stateInput.classList.remove('required');
      } else {
        stateSelect.style.display = 'none';
        stateSelect.setAttribute('disabled', true);
        stateInput.style.display = 'block';
        if (statesRequired) {
          stateContainer.classList.add('field-required');
          stateInput.classList.add('required');
        } else {
          stateInput.value = '';
          stateContainer.classList.remove('field-required');
          stateInput.classList.remove('required');
        }
        stateContainer.style.display = !!statesRequired ? 'block' : 'none';
        if (!statesRequired) {
          stateInput.setAttribute('disabled', true);
        } else {
          stateInput.removeAttribute('disabled');
        }
        stateSelect.classList.remove('required');
      }
    };

    document.querySelectorAll('.js-trigger-state-change').forEach(element => {
      element.addEventListener('change', () => {
        const stateContainer = document.querySelector(element.dataset.stateContainer);
        if (stateContainer) {
          const countryId = element.value;
          updateState(stateContainer, countryId);
        }
      });
    });

    document.querySelectorAll('.js-trigger-state-change:not([hidden])').forEach(element => {
      element.dispatchEvent(new Event('change'));
    });

    const orderUseBilling = document.getElementById('order_use_billing');
    orderUseBilling.addEventListener('change', function() {
      update_shipping_form_state(orderUseBilling);
    });

    function update_shipping_form_state(order_use_billing) {
      const addressInputs = document.querySelectorAll('#shipping .address-inputs');
      const inputs = document.querySelectorAll('#shipping .address-inputs input');
      const selects = document.querySelectorAll('#shipping .address-inputs select');
      if (order_use_billing.checked) {
        addressInputs.forEach(addressInput => addressInput.style.display = 'none');
        inputs.forEach(input => input.setAttribute('disabled', true));
        selects.forEach(sel => sel.setAttribute('disabled', true));
      } else {
        addressInputs.forEach(addressInput => addressInput.style.display = 'block');
        inputs.forEach(input => input.removeAttribute('disabled'));
        selects.forEach(sel => sel.removeAttribute('disabled'));
        document.querySelector('#shipping .js-trigger-state-change').dispatchEvent(new Event('change'));
      }
    };

    update_shipping_form_state(orderUseBilling);
  }
});
window.addEventListener('DOMContentLoaded', () => {
  const form = document.querySelector('#checkout_form_payment');
  const existingCards = document.querySelector('#existing_cards');

  if (form) {
    if (existingCards) {
      const paymentMethodControls = document.querySelector('.payment-method-controls');
      const useExistingCardYes = document.querySelector('#use_existing_card_yes');
      const useExistingCardNo = document.querySelector('#use_existing_card_no');
      const existingCcRadios = document.querySelectorAll('.existing-cc-radio');

      paymentMethodControls.style.display = 'none';

      useExistingCardYes.addEventListener('click', () => {
        paymentMethodControls.style.display = 'none';
        existingCcRadios.forEach(radio => radio.removeAttribute('disabled'));
      });

      useExistingCardNo.addEventListener('click', () => {
        paymentMethodControls.style.display = 'block';
        existingCcRadios.forEach(radio => radio.setAttribute('disabled', true));
      });
    }

    const selectors = document
      .querySelectorAll('input[type="radio"][name="order[payments_attributes][][payment_method_id]"]');

    selectors.forEach(selector => {
      selector.addEventListener('click', () => {
        const controls = document.querySelectorAll('.payment-method-controls li');
        controls.forEach(control => control.style.display = 'none');

        if (selector.checked) {
          const selectedControl = document.querySelector(`#payment_method_${selector.value}`);
          selectedControl.style.display = 'block';
        }
      });
    });

    // Activate already checked payment method if form is re-rendered
    // i.e. if user enters invalid data
    document.querySelector('input[type="radio"]:checked').click();
  }
});
window.addEventListener('DOMContentLoaded', () => {
  const radios = document.querySelectorAll("[data-js='variant-radio']");
  const thumbnailsLinks = document
    .querySelectorAll("[data-js='product-thumbnail'] a, [data-js='variant-thumbnail'] a");
  const productImage = document.querySelector("[data-js='product-main-image']");
  const variantsThumbnails = document.querySelectorAll("[data-js='variant-thumbnail']");

  if (radios.length > 0) {
    const selectedRadio = document.querySelector("[data-js='variant-radio'][checked='checked']");
    updateVariantPrice(selectedRadio);
    updateVariantImages(selectedRadio.value);
  }

  radios.forEach(radio => {
    radio.addEventListener('click', () => {
      updateVariantPrice(radio);
      updateVariantImages(radio.value);
    });
  });

  thumbnailsLinks.forEach(thumbnailLink => {
    thumbnailLink.addEventListener('click', (event) => {
      event.preventDefault();
      updateProductImage(thumbnailLink.href);
    });
  });

  function updateVariantPrice(variant) {
    const variantPrice = variant.dataset.jsPrice;
    if (variantPrice) {
      document.querySelector("[data-js='price']").innerHTML = variantPrice;
    }
  };

  function updateVariantImages(variantId) {
    selector = "[data-js='variant-thumbnail'][data-js-id='" + variantId + "']";
    variantsThumbnailsToDisplay = document.querySelectorAll(selector);

    variantsThumbnails.forEach(thumbnail => {
      thumbnail.style.display = 'none';
    });

    variantsThumbnailsToDisplay.forEach(thumbnail => {
      thumbnail.style.display = 'list-item';
    });

    if(variantsThumbnailsToDisplay.length) {
      variantFirstImage = variantsThumbnailsToDisplay[0].querySelector('a').href
      updateProductImage(variantFirstImage);
    }
  };

  function updateProductImage(imageSrc) {
    productImage.src = imageSrc;
  }
});
window.addEventListener('DOMContentLoaded', () => {
  const cartForm = document.getElementById('update-cart');

  if (cartForm) {
    const deleteButtons = cartForm.querySelectorAll('input.delete');

    deleteButtons.forEach(deleteButton => {
      deleteButton.addEventListener('click', () => {
        const lineItem = deleteButton.parentNode.parentNode;
        lineItem.querySelector('.cart-item__quantity input').setAttribute('value', 0);
      });
    });

    cartForm.addEventListener('submit', () => {
      document.getElementById('update-button').setAttribute('disabled', true);
    });
  }
});

Solidus.fetch_cart = (cartLinkUrl) => {
  fetch(cartLinkUrl || Solidus.pathFor('cart_link'))
    .then(response => response.text())
    .then(html => {
      document.getElementById('link-to-cart').innerHTML = html;
    });
};
window.addEventListener('DOMContentLoaded', () => {
  const localeSelector = document.querySelector('.locale-selector select');

  if(localeSelector) {
    localeSelector.addEventListener('change', (event) => {
      event.target.form.submit();
    });
  }
});
document.addEventListener("DOMContentLoaded", function () {
  const optionTypeSelector = document.querySelectorAll(".selection-items");
  for (var i = 0; i < optionTypeSelector.length; i++) {
    optionTypeSelector[i].addEventListener("click", onSelection);
  }
  selectFirstVariant();
});

function selectFirstVariant() {
  const firstVariant = document.querySelector("[data-option-index]");
  if (firstVariant) {
    setTimeout(() => { firstVariant.click(); }, 1);
  }
}

function onSelection(event) {
  document.getElementById(`selected-${event.target.name}`).innerText = event.target.dataset.presentation;

  const optionIndex = event.target.attributes["data-option-index"].value;
  const nextType = document.querySelector(`[data-option-index="${parseInt(optionIndex, 10) + 1}"]`);
  if (nextType) {
    updateOptions(nextType.name, optionIndex);
  }
  selectVariant();
}

function updateStockView(status) {
  if (status) {
    this.stockIndicatorTarget.classList.add("d-hide");
    this.cartButtonTarget.disabled = false;
  } else {
    this.stockIndicatorTarget.classList.remove("d-hide");
    this.cartButtonTarget.disabled = true;
  }
}

function updateOptions(nextTypeName, optionIndex) {
  const nextOptionValues = this.nextOptionValues(optionIndex);

  let firstRadio = null;
  const allNextOptions = [...document.querySelectorAll(`[name="${nextTypeName}"]`)];
  allNextOptions.forEach((radio) => {
    if (!nextOptionValues.includes(parseInt(radio.value, 10))) {
      radio.disabled = true;
      radio.parentElement.classList.add("d-hide");
    } else {
      radio.disabled = false;
      radio.parentElement.classList.remove("d-hide");
      if (!firstRadio) { firstRadio = radio; }
    }
  });

  const nextSelectedRadio = document.querySelector(`[name="${nextTypeName}"]:checked`);
  if (nextSelectedRadio.disabled) {
    firstRadio.click();
  } else {
    nextSelectedRadio.click();
  }
}

function nextOptionValues(optionIndex) {
  const values = [];
  const variantOptionsTargets = document.querySelectorAll('.product-variants__list > li > input');
  variantOptionsTargets.forEach((option) => {
    const optionValueIds = JSON.parse(option.attributes["data-option-value-ids"].value);
    const selectedOptionIds = this.currentSelection();
    let matched = true;
    for (let i = 0; i <= optionIndex; i += 1) {
      if (optionValueIds[i] !== selectedOptionIds[i]) {
        matched = false;
        break;
      }
    }
    if (matched) {
      values.push(optionValueIds[parseInt(optionIndex, 10) + 1]);
    }
  });
  return values;
}

function updateView(variant) {
  document.querySelector('#product-price').innerHTML = variant.dataset.price;
}

function selectVariant() {
  this.variant = document.querySelector(`[data-option-value-ids="${JSON.stringify(this.currentSelection())}"]`);
  if (this.variant) {
    this.variant.click();
    this.updateView(this.variant);
  } else {
    this.priceTarget.innerText = "Not found, please select all optionTypeSelector";
  }
}

function currentSelection() {
  let i = 0;
  const selectionArr = [];
  while (document.querySelector(`[data-option-index="${i}"]`)) {
    selectionArr.push(parseInt(document.querySelector(`[data-option-index="${i}"]:checked`).value, 10));
    i += 1;
  }
  return selectionArr;
};
window.SolidusPaypalCommercePlatform = {};
// Attach inline GET-compatible params to a path.
// The path is assumed to be base off the current location.
// The data structure will wrap keys beyond the first level in
// square brackets, e.g. `{a: {b: 123}}` will become `a[b]=123`.
const urlWithParams = (path, data) => {
  const url = new URL(path, window.location)

  const formKey = (keys) => {
    if (keys.length === 0) return ''
    if (keys.length === 1) return keys[0]

    // Wrap any key beyond the first one in square brackets
    return `${keys.shift()}${keys.map((k) => `[${k}]`).join()}`
  }

  const appendSearchParams = (parentKeys, data) =>
    Object.entries(data).forEach(([key, value]) => {

      if (typeof value === 'object')
        appendSearchParams([...parentKeys, key], value)
      else
        url.searchParams.append(formKey([...parentKeys, key]), value)
    })

  appendSearchParams([], data)
  return url
}

const authHeader = (options = {}) => {
  const apiKey = SolidusPaypalCommercePlatform.api_key
  if (options.require && !apiKey) throw new Error("Missing api key")


  return {
    'Authorization': `Bearer ${apiKey}`,
    [document.querySelector('meta[name="csrf-param"]')?.content]: document.querySelector('meta[name="csrf-token"]')?.content,
  }
}
SolidusPaypalCommercePlatform.showOverlay = function() {
  document.getElementById("paypal_commerce_platform_overlay").style.display = "block";
}

SolidusPaypalCommercePlatform.hideOverlay = function() {
  document.getElementById("paypal_commerce_platform_overlay").style.display = "none";
}

SolidusPaypalCommercePlatform.handleError = function(error) {
  console.error(error);
  alert("There was a problem connecting with PayPal.")
  throw error
}

SolidusPaypalCommercePlatform.sendOrder = async function(payment_method_id) {
  if (!payment_method_id) throw new Error("payment_method_id is missing!")

  const url = urlWithParams(`/solidus_paypal_commerce_platform/paypal_orders/${SolidusPaypalCommercePlatform.current_order_id}`, {
    payment_method_id: payment_method_id,
    order_token: SolidusPaypalCommercePlatform.current_order_token,
  })

  const response = await fetch(url, {headers: authHeader()})
  const data = await response.json()

  if (response.ok) {
    return data.table.result.table.id
  } else {
    return data.table.error.table
  }
}

SolidusPaypalCommercePlatform.createAndSendOrder = async function(payment_method_id) {
  await SolidusPaypalCommercePlatform.createOrder()
  return await SolidusPaypalCommercePlatform.sendOrder(payment_method_id)
}

SolidusPaypalCommercePlatform.createOrder = async function() {
  const response = await fetch(
    "/solidus_paypal_commerce_platform/orders",
    {
      method: 'POST',
      headers: {
        ...authHeader(),
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        order: {
          line_items_attributes: [{
            variant_id: SolidusPaypalCommercePlatform.getVariantId(),
            quantity: SolidusPaypalCommercePlatform.getQuantity()
          }]
        }
      }),
    }
  )
  const data = await response.json()

  if (response.ok) {
    SolidusPaypalCommercePlatform.current_order_id = data.number
    SolidusPaypalCommercePlatform.current_order_token = data.guest_token
  } else {
    console.error('A problem has occurred while creating your order', data);
    alert('A problem has occurred while creating your order - ' + JSON.stringify(data))
  }
}

SolidusPaypalCommercePlatform.getVariantId = function() {
  var variants = document.getElementsByName("variant_id")
  var variant_id;

  if (variants.length == 1){
    variant_id = variants[0].value
  } else {
    for (var i = 0; i < variants.length; i++) {
      if (variants[i].checked) {
        variant_id = variants[i].value
      }
    }
  }
  return variant_id
}

SolidusPaypalCommercePlatform.getQuantity = function() {
  return document.getElementById("quantity").value
}

SolidusPaypalCommercePlatform.approveOrder = function(data, actions) {
  SolidusPaypalCommercePlatform.showOverlay()
  actions.order.get().then(function(response){
    SolidusPaypalCommercePlatform.updateAddress(response).then(function() {
      SolidusPaypalCommercePlatform.verifyTotal(response.purchase_units[0].amount.value).then(function(){
        document.querySelector("#payments_source_paypal_order_id").value = data.orderID
        document.querySelector("#payments_source_paypal_email").value = response.payer.email_address
        document.querySelector("#payments_source_paypal_funding_source").value = SolidusPaypalCommercePlatform.fundingSource
        document.querySelector("#checkout_form_payment").submit()
      })
    })
  })
}

SolidusPaypalCommercePlatform.shippingChange = async function(paypalData, actions) {
  const shipping_address = paypalData.shipping_address

  url = urlWithParams('/solidus_paypal_commerce_platform/shipping_rates', {
    order_id: SolidusPaypalCommercePlatform.current_order_id,
    order_token: SolidusPaypalCommercePlatform.current_order_token,
    address: shipping_address,
  })

  const response = await fetch(url, {headers: authHeader()})
  const data = await response.json()

  if (response.ok) {
    return actions.order.patch([data]).catch(function(e) {
      console.error('There were some problems with your payment address while trying to patch the order', e);
      actions.reject()
    })
  } else {
    console.error('There were some problems with your payment address', data);
    return actions.reject()
  }
}

SolidusPaypalCommercePlatform.verifyTotal = async function(paypal_total) {
  const response = await fetch(
    urlWithParams('/solidus_paypal_commerce_platform/verify_total', {
      order_id: SolidusPaypalCommercePlatform.current_order_id,
      order_token: SolidusPaypalCommercePlatform.current_order_token,
      paypal_total: paypal_total
    }), {
      headers: authHeader()
    })

  if (!response.ok) {
    SolidusPaypalCommercePlatform.hideOverlay()
    alert('There were some problems with your payment - ' + response.responseJSON.errors.expected_total);
  }
}

SolidusPaypalCommercePlatform.finalizeOrder = function(payment_method_id, data, actions) {
  SolidusPaypalCommercePlatform.showOverlay()
  actions.order.get().then(function(response){
    SolidusPaypalCommercePlatform.updateAddress(response).then(function() {
      var paypal_amount = response.purchase_units[0].amount.value
      SolidusPaypalCommercePlatform.advanceOrder().then(function() {
        SolidusPaypalCommercePlatform.verifyTotal(paypal_amount).then(function(){
          SolidusPaypalCommercePlatform.addPayment(paypal_amount, payment_method_id, data, response.payer.email_address).then(function() {
            window.location.href = SolidusPaypalCommercePlatform.checkout_url
          })
        })
      })
    })
  })
}

SolidusPaypalCommercePlatform.advanceOrder = async function() {
  const response = await fetch(
    `/api/checkouts/${SolidusPaypalCommercePlatform.current_order_id}/advance`, {
      headers: {
        ...authHeader(),
        'Content-Type': 'application/json'
      },
      method: 'PUT',
      body: JSON.stringify({
        order_token: SolidusPaypalCommercePlatform.current_order_token
      })
    })

  if (!response.ok) {
    SolidusPaypalCommercePlatform.hideOverlay()
    alert('There were some problems with your order');
  }
}

SolidusPaypalCommercePlatform.addPayment = async function(paypal_amount, payment_method_id, data, email) {
  const response = await fetch(
    `/api/checkouts/${SolidusPaypalCommercePlatform.current_order_id}/payments`, {
    method: 'POST',
      headers: {
        ...authHeader(),
        'Content-Type': 'application/json'
      },
    body: JSON.stringify({
      order_token: SolidusPaypalCommercePlatform.current_order_token,
      payment: {
        amount: paypal_amount,
        payment_method_id: payment_method_id,
        source_attributes: {
          paypal_order_id: data.orderID,
          paypal_email: email,
          paypal_funding_source: SolidusPaypalCommercePlatform.fundingSource
        }
      }
    })
  })

  if (!response.ok) {
    SolidusPaypalCommercePlatform.hideOverlay()
    alert('There were some problems with your payment');
  }
}

SolidusPaypalCommercePlatform.updateAddress = async function(payload) {
  var shipping = payload.purchase_units[0].shipping
  if (!shipping) return Promise.resolve({})

  var updated_address = shipping.address

  const response = await fetch(
    '/solidus_paypal_commerce_platform/update_address', {
      method: 'POST',
      headers: {
        ...authHeader(),
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        address: {
          updated_address: updated_address,
          recipient: payload.payer
        },
        order_id: SolidusPaypalCommercePlatform.current_order_id,
        order_token: SolidusPaypalCommercePlatform.current_order_token
      }),
    }
  )

  if (!response.ok) {
    SolidusPaypalCommercePlatform.hideOverlay()
    const message = await response.text()
    console.error('There were some problems with your payment address - ', message);
    alert('There were some problems with your payment address - ' + message)
  }
};
SolidusPaypalCommercePlatform.renderButton = function(payment_method_id, style) {
  paypal.Buttons({
    style: style,
    createOrder: SolidusPaypalCommercePlatform.sendOrder.bind(null, payment_method_id),
    onClick: (data) => { SolidusPaypalCommercePlatform.fundingSource = data.fundingSource },
    onApprove: SolidusPaypalCommercePlatform.approveOrder,
    onShippingChange: SolidusPaypalCommercePlatform.shippingChange,
    onError: SolidusPaypalCommercePlatform.handleError
  }).render('#paypal-button-container')
}

SolidusPaypalCommercePlatform.renderCartButton = function(payment_method_id, style) {
  paypal.Buttons({
    style: style,
    createOrder: SolidusPaypalCommercePlatform.sendOrder.bind(null, payment_method_id),
    onClick: (data) => { SolidusPaypalCommercePlatform.fundingSource = data.fundingSource },
    onApprove: SolidusPaypalCommercePlatform.finalizeOrder.bind(null, payment_method_id),
    onShippingChange: SolidusPaypalCommercePlatform.shippingChange,
    onError: SolidusPaypalCommercePlatform.handleError
  }).render('#paypal-button-container')
}

SolidusPaypalCommercePlatform.renderProductButton = function(payment_method_id, style) {
  paypal.Buttons({
    style: style,
    createOrder: SolidusPaypalCommercePlatform.createAndSendOrder.bind(null, payment_method_id),
    onClick: (data) => { SolidusPaypalCommercePlatform.fundingSource = data.fundingSource },
    onApprove: SolidusPaypalCommercePlatform.finalizeOrder.bind(null, payment_method_id),
    onShippingChange: SolidusPaypalCommercePlatform.shippingChange,
    onError: SolidusPaypalCommercePlatform.handleError
  }).render('#paypal-button-container')
}

SolidusPaypalCommercePlatform.renderVenmoStandalone = function(payment_method_id, style) {
  paypal.Buttons({
    style: style,
    fundingSource: paypal.FUNDING.VENMO,
    createOrder: SolidusPaypalCommercePlatform.sendOrder.bind(null, payment_method_id),
    onClick: () => { SolidusPaypalCommercePlatform.fundingSource = paypal.FUNDING.VENMO },
    onApprove: SolidusPaypalCommercePlatform.approveOrder,
    onError: SolidusPaypalCommercePlatform.handleError
  }).render('#paypal-button-container')
};





Object.assign(SolidusPaypalCommercePlatform, {
  current_order_id: null,
  current_order_token: null,
  api_key: null,
});
// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/frontend/all.js'

// spree/frontend/all points to the
// `vendor/assets/javascripts/spree/frontend/all.js` file generated by
// `solidus:install`. See `setup_assets` at
// https://github.com/solidusio/solidus/blob/master/core/lib/generators/solidus/install/install_generator.rb








;
