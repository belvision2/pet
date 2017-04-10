

/*
Class: window
	Some properties are attached to the window object by the browser detection.
	
Note:
	browser detection is entirely object-based. We dont sniff.

Properties:
	window.ie - will be set to true if the current browser is internet explorer (any).
	window.ie6 - will be set to true if the current browser is internet explorer 6.
	window.ie7 - will be set to true if the current browser is internet explorer 7.
	window.gecko - will be set to true if the current browser is Mozilla/Gecko.
	window.webkit - will be set to true if the current browser is Safari/Konqueror.
	window.webkit419 - will be set to true if the current browser is Safari2 / webkit till version 419.
	window.webkit420 - will be set to true if the current browser is Safari3 (Webkit SVN Build) / webkit over version 419.
	window.opera - is set to true by opera itself.
*/

window.xpath = !!(document.evaluate);
if (window.ActiveXObject) window.ie = window[window.XMLHttpRequest ? 'ie7' : 'ie6'] = true;
else if (document.childNodes && !document.all && !navigator.taintEnabled) window.webkit = window[window.xpath ? 'webkit420' : 'webkit419'] = true;
else if (document.getBoxObjectFor != null) window.gecko = true;

/*compatibility*/

window.khtml = window.webkit;

Object.extend = $extend;

/*end compatibility*/

//htmlelement

if (typeof HTMLElement == 'undefined'){
	var HTMLElement = function(){};
	if (window.webkit) document.createElement("iframe"); //fixes safari
	HTMLElement.prototype = (window.webkit) ? window["[[DOMElement.prototype]]"] : {};
}
HTMLElement.prototype.htmlElement = function(){};

//enables background image cache for internet explorer 6

if (window.ie6) try {document.execCommand("BackgroundImageCache", false, true);} catch(e){};


	/*
	Property: cloneEvents
		Clones all events from an element to this element.

	Arguments:
		from - element, copy all events from this element
		type - optional, copies only events of this type
	*/

	cloneEvents: function(from, type){
		if (!from.$events) return this;
		if (!type){
			for (var evType in from.$events) this.cloneEvents(from, evType);
		} else if (from.$events[type]){
			from.$events[type].keys.each(function(fn){
				this.addEvent(type, fn);
			}, this);
		}
		return this;
	}

};

window.extend(Element.Methods.Events);
document.extend(Element.Methods.Events);
Element.extend(Element.Methods.Events);

/* Section: Custom Events */

Element.Events = new Abstract({

	/*
	Event: mouseenter
		In addition to the standard javascript events (load, mouseover, mouseout, click, etc.) <Event.js> contains two custom events
		this event fires when the mouse enters the area of the dom element; will not be fired again if the mouse crosses over children of the element (unlike mouseover)


	Example:
		>$(myElement).addEvent('mouseenter', myFunction);
	*/

	'mouseenter': {
		type: 'mouseover',
		map: function(event){
			event = new Event(event);
			if (event.relatedTarget != this && !this.hasChild(event.relatedTarget)) this.fireEvent('mouseenter', event);
		}
	},

	/*
	Event: mouseleave
		this event fires when the mouse exits the area of the dom element; will not be fired again if the mouse crosses over children of the element (unlike mouseout)


	Example:
		>$(myElement).addEvent('mouseleave', myFunction);
	*/

	'mouseleave': {
		type: 'mouseout',
		map: function(event){
			event = new Event(event);
			if (event.relatedTarget != this && !this.hasChild(event.relatedTarget)) this.fireEvent('mouseleave', event);
		}
	},

	'mousewheel': {
		type: (window.gecko) ? 'DOMMouseScroll' : 'mousewheel'
	}

});

Element.NativeEvents = [
	'click', 'dblclick', 'mouseup', 'mousedown', //mouse buttons
	'mousewheel', 'DOMMouseScroll', //mouse wheel
	'mouseover', 'mouseout', 'mousemove', //mouse movement
	'keydown', 'keypress', 'keyup', //keys
	'load', 'unload', 'beforeunload', 'resize', 'move', //window
	'focus', 'blur', 'change', 'submit', 'reset', 'select', //forms elements
	'error', 'abort', 'contextmenu', 'scroll' //misc
];

/*
Class: Function
	A collection of The Function Object prototype methods.
*/

Function.extend({

	/*
	Property: bindWithEvent
		automatically passes MooTools Event Class.

	Arguments:
		bind - optional, the object that the "this" of the function will refer to.
		args - optional, an argument to pass to the function; if more than one argument, it must be an array of arguments.

	Returns:
		a function with the parameter bind as its "this" and as a pre-passed argument event or window.event, depending on the browser.

	Example:
		>function myFunction(event){
		>	alert(event.client.x) //returns the coordinates of the mouse..
		>};
		>myElement.addEvent('click', myFunction.bindWithEvent(myElement));
	*/

	bindWithEvent: function(bind, args){
		return this.create({'bind': bind, 'arguments': args, 'event': Event});
	}

});


/*
Script: Element.Filters.js
	add Filters capability to <Elements>.

License:
	MIT-style license.
*/

/*
Class: Elements
	A collection of methods to be used with <$$> elements collections.
*/

Elements.extend({
	
	/*
	Property: filterByTag
		Filters the collection by a specified tag name.
		Returns a new Elements collection, while the original remains untouched.
	*/
	
	filterByTag: function(tag){
		return new Elements(this.filter(function(el){
			return (Element.getTag(el) == tag);
		}));
	},
	
	/*
	Property: filterByClass
		Filters the collection by a specified class name.
		Returns a new Elements collection, while the original remains untouched.
	*/
	
	filterByClass: function(className, nocash){
		var elements = this.filter(function(el){
			return (el.className && el.className.contains(className, ' '));
		});
		return (nocash) ? elements : new Elements(elements);
	},
	
	/*
	Property: filterById
		Filters the collection by a specified ID.
		Returns a new Elements collection, while the original remains untouched.
	*/
	
	filterById: function(id, nocash){
		var elements = this.filter(function(el){
			return (el.id == id);
		});
		return (nocash) ? elements : new Elements(elements);
	},
	
	/*
	Property: filterByAttribute
		Filters the collection by a specified attribute.
		Returns a new Elements collection, while the original remains untouched.
		
	Arguments:
		name - the attribute name.
		operator - optional, the attribute operator.
		value - optional, the attribute value, only valid if the operator is specified.
	*/
	
	filterByAttribute: function(name, operator, value, nocash){
		var elements = this.filter(function(el){
			var current = Element.getProperty(el, name);
			if (!current) return false;
			if (!operator) return true;
			switch(operator){
				case '=': return (current == value);
				case '*=': return (current.contains(value));
				case '^=': return (current.substr(0, value.length) == value);
				case '$=': return (current.substr(current.length - value.length) == value);
				case '!=': return (current != value);
				case '~=': return current.contains(value, ' ');
			}
			return false;
		});
		return (nocash) ? elements : new Elements(elements);
	}

});

/*
Script: Element.Selectors.js
	Css Query related functions and <Element> extensions

License:
	MIT-style license.
*/

/* Section: Utility Functions */

/*
Function: $E
	Selects a single (i.e. the first found) Element based on the selector passed in and an optional filter element.
	Returns as <Element>.

Arguments:
	selector - string; the css selector to match
	filter - optional; a DOM element to limit the scope of the selector match; defaults to document.

Example:
	>$E('a', 'myElement') //find the first anchor tag inside the DOM element with id 'myElement'

Returns:
	a DOM element - the first element that matches the selector
*/

function $E(selector, filter){
	return ($(filter) || document).getElement(selector);
};

/*
Function: $ES
	Returns a collection of Elements that match the selector passed in limited to the scope of the optional filter.
	See Also: <Element.getElements> for an alternate syntax.
	Returns as <Elements>.

Returns:
	an array of dom elements that match the selector within the filter

Arguments:
	selector - string; css selector to match
	filter - optional; a DOM element to limit the scope of the selector match; defaults to document.

Examples:
	>$ES("a") //gets all the anchor tags; synonymous with $$("a")
	>$ES('a','myElement') //get all the anchor tags within $('myElement')
*/

function $ES(selector, filter){
	return ($(filter) || document).getElementsBySelector(selector);
};

$$.shared = {

	'regexp': /^(\w*|\*)(?:#([\w-]+)|\.([\w-]+))?(?:\[(\w+)(?:([!*^$]?=)["']?([^"'\]]*)["']?)?])?$/,
	
	'xpath': {

		getParam: function(items, context, param, i){
			var temp = [context.namespaceURI ? 'xhtml:' : '', param[1]];
			if (param[2]) temp.push('[@id="', param[2], '"]');
			if (param[3]) temp.push('[contains(concat(" ", @class, " "), " ', param[3], ' ")]');
			if (param[4]){
				if (param[5] && param[6]){
					switch(param[5]){
						case '*=': temp.push('[contains(@', param[4], ', "', param[6], '")]'); break;
						case '^=': temp.push('[starts-with(@', param[4], ', "', param[6], '")]'); break;
						case '$=': temp.push('[substring(@', param[4], ', string-length(@', param[4], ') - ', param[6].length, ' + 1) = "', param[6], '"]'); break;
						case '=': temp.push('[@', param[4], '="', param[6], '"]'); break;
						case '!=': temp.push('[@', param[4], '!="', param[6], '"]');
					}
				} else {
					temp.push('[@', param[4], ']');
				}
			}
			items.push(temp.join(''));
			return items;
		},
		
		getItems: function(items, context, nocash){
			var elements = [];
			var xpath = document.evaluate('.//' + items.join('//'), context, $$.shared.resolver, XPathResult.UNORDERED_NODE_SNAPSHOT_TYPE, null);
			for (var i = 0, j = xpath.snapshotLength; i < j; i++) elements.push(xpath.snapshotItem(i));
			return (nocash) ? elements : new Elements(elements.map($));
		}

	},
	
	'normal': {
		
		getParam: function(items, context, param, i){
			if (i == 0){
				if (param[2]){
					var el = context.getElementById(param[2]);
					if (!el || ((param[1] != '*') && (Element.getTag(el) != param[1]))) return false;
					items = [el];
				} else {
					items = $A(context.getElementsByTagName(param[1]));
				}
			} else {
				items = $$.shared.getElementsByTagName(items, param[1]);
				if (param[2]) items = Elements.filterById(items, param[2], true);
			}
			if (param[3]) items = Elements.filterByClass(items, param[3], true);
			if (param[4]) items = Elements.filterByAttribute(items, param[4], param[5], param[6], true);
			return items;
		},

		getItems: function(items, context, nocash){
			return (nocash) ? items : $$.unique(items);
		}

	},

	resolver: function(prefix){
		return (prefix == 'xhtml') ? 'http://www.w3.org/1999/xhtml' : false;
	},

	getElementsByTagName: function(context, tagName){
		var found = [];
		for (var i = 0, j = context.length; i < j; i++) found.extend(context[i].getElementsByTagName(tagName));
		return found;
	}

};

$$.shared.method = (window.xpath) ? 'xpath' : 'normal';

/*
Class: Element
	Custom class to allow all of its methods to be used with any DOM element via the dollar function <$>.
*/

Element.Methods.Dom = {

	/*
	Property: getElements
		Gets all the elements within an element that match the given (single) selector.
		Returns as <Elements>.

	Arguments:
		selector - string; the css selector to match

	Examples:
		>$('myElement').getElements('a'); // get all anchors within myElement
		>$('myElement').getElements('input[name=dialog]') //get all input tags with name 'dialog'
		>$('myElement').getElements('input[name$=log]') //get all input tags with names ending with 'log'

	Notes:
		Supports these operators in attribute selectors:

		- = : is equal to
		- ^= : starts-with
		- $= : ends-with
		- != : is not equal to

		Xpath is used automatically for compliant browsers.
	*/

	getElements: function(selector, nocash){
		var items = [];
		selector = selector.trim().split(' ');
		for (var i = 0, j = selector.length; i < j; i++){
			var sel = selector[i];
			var param = sel.match($$.shared.regexp);
			if (!param) break;
			param[1] = param[1] || '*';
			var temp = $$.shared[$$.shared.method].getParam(items, this, param, i);
			if (!temp) break;
			items = temp;
		}
		return $$.shared[$$.shared.method].getItems(items, this, nocash);
	},

	/*
	Property: getElement
		Same as <Element.getElements>, but returns only the first. Alternate syntax for <$E>, where filter is the Element.
		Returns as <Element>.

	Arguments:
		selector - string; css selector
	*/

	getElement: function(selector){
		return $(this.getElements(selector, true)[0] || false);
	},

	/*
	Property: getElementsBySelector
		Same as <Element.getElements>, but allows for comma separated selectors, as in css. Alternate syntax for <$$>, where filter is the Element.
		Returns as <Elements>.

	Arguments:
		selector - string; css selector
	*/

	getElementsBySelector: function(selector, nocash){
		var elements = [];
		selector = selector.split(',');
		for (var i = 0, j = selector.length; i < j; i++) elements = elements.concat(this.getElements(selector[i], true));
		return (nocash) ? elements : $$.unique(elements);
	}

};

Element.extend({

	/*
	Property: getElementById
		Targets an element with the specified id found inside the Element. Does not overwrite document.getElementById.

	Arguments:
		id - string; the id of the element to find.
	*/

	getElementById: function(id){
		var el = document.getElementById(id);
		if (!el) return false;
		for (var parent = el.parentNode; parent != this; parent = parent.parentNode){
			if (!parent) return false;
		}
		return el;
	}/*compatibility*/,
	
	getElementsByClassName: function(className){ 
		return this.getElements('.' + className); 
	}
	
	/*end compatibility*/

});

document.extend(Element.Methods.Dom);
Element.extend(Element.Methods.Dom);

/*
Script: Element.Form.js
	Contains Element prototypes to deal with Forms and their elements.

License:
	MIT-style license.
*/

/*
Class: Element
	Custom class to allow all of its methods to be used with any DOM element via the dollar function <$>.
*/

Element.extend({

	/*
	Property: getValue
		Returns the value of the Element, if its tag is textarea, select or input. getValue called on a multiple select will return an array.
	*/

	getValue: function(){
		switch(this.getTag()){
			case 'select':
				var values = [];
				$each(this.options, function(option){
					if (option.selected) values.push($pick(option.value, option.text));
				});
				return (this.multiple) ? values : values[0];
			case 'input': if (!(this.checked && ['checkbox', 'radio'].contains(this.type)) && !['hidden', 'text', 'password'].contains(this.type)) break;
			case 'textarea': return this.value;
		}
		return false;
	},

	getFormElements: function(){
		return $$(this.getElementsByTagName('input'), this.getElementsByTagName('select'), this.getElementsByTagName('textarea'));
	},

	/*
	Property: toQueryString
		Reads the children inputs of the Element and generates a query string, based on their values. Used internally in <Ajax>

	Example:
		(start code)
		<form id="myForm" action="submit.php">
		<input name="email" value="bob@bob.com">
		<input name="zipCode" value="90210">
		</form>

		<script>
		 $('myForm').toQueryString()
		</script>
		(end)

		Returns:
			email=bob@bob.com&zipCode=90210
	*/

	toQueryString: function(){
		var queryString = [];
		this.getFormElements().each(function(el){
			var name = el.name;
			var value = el.getValue();
			if (value === false || !name || el.disabled) return;
			var qs = function(val){
				queryString.push(name + '=' + encodeURIComponent(val));
			};
			if ($type(value) == 'array') value.each(qs);
			else qs(value);
		});
		return queryString.join('&');
	}

});

/*
Script: Element.Dimensions.js
	Contains Element prototypes to deal with Element size and position in space.

Note:
	The functions in this script require n XHTML doctype.

License:
	MIT-style license.
*/

/*
Class: Element
	Custom class to allow all of its methods to be used with any DOM element via the dollar function <$>.
*/

Element.extend({

	/*
	Property: scrollTo
		Scrolls the element to the specified coordinated (if the element has an overflow)

	Arguments:
		x - the x coordinate
		y - the y coordinate

	Example:
		>$('myElement').scrollTo(0, 100)
	*/

	scrollTo: function(x, y){
		this.scrollLeft = x;
		this.scrollTop = y;
	},

	/*
	Property: getSize
		Return an Object representing the size/scroll values of the element.

	Example:
		(start code)
		$('myElement').getSize();
		(end)

	Returns:
		(start code)
		{
			'scroll': {'x': 100, 'y': 100},
			'size': {'x': 200, 'y': 400},
			'scrollSize': {'x': 300, 'y': 500}
		}
		(end)
	*/

	getSize: function(){
		return {
			'scroll': {'x': this.scrollLeft, 'y': this.scrollTop},
			'size': {'x': this.offsetWidth, 'y': this.offsetHeight},
			'scrollSize': {'x': this.scrollWidth, 'y': this.scrollHeight}
		};
	},

	/*
	Property: getPosition
		Returns the real offsets of the element.

	Arguments:
		overflown - optional, an array of nested scrolling containers for scroll offset calculation, use this if your element is inside any element containing scrollbars

	Example:
		>$('element').getPosition();

	Returns:
		>{x: 100, y:500};
	*/

	getPosition: function(overflown){
		overflown = overflown || [];
		var el = this, left = 0, top = 0;
		do {
			left += el.offsetLeft || 0;
			top += el.offsetTop || 0;
			el = el.offsetParent;
		} while (el);
		overflown.each(function(element){
			left -= element.scrollLeft || 0;
			top -= element.scrollTop || 0;
		});
		return {'x': left, 'y': top};
	},

	/*
	Property: getTop
		Returns the distance from the top of the window to the Element.

	Arguments:
		overflown - optional, an array of nested scrolling containers, see Element::getPosition
	*/

	getTop: function(overflown){
		return this.getPosition(overflown).y;
	},

	/*
	Property: getLeft
		Returns the distance from the left of the window to the Element.

	Arguments:
		overflown - optional, an array of nested scrolling containers, see Element::getPosition
	*/

	getLeft: function(overflown){
		return this.getPosition(overflown).x;
	},

	/*
	Property: getCoordinates
		Returns an object with width, height, left, right, top, and bottom, representing the values of the Element

	Arguments:
		overflown - optional, an array of nested scrolling containers, see Element::getPosition

	Example:
		(start code)
		var myValues = $('myElement').getCoordinates();
		(end)

	Returns:
		(start code)
		{
			width: 200,
			height: 300,
			left: 100,
			top: 50,
			right: 300,
			bottom: 350
		}
		(end)
	*/

	getCoordinates: function(overflown){
		var position = this.getPosition(overflown);
		var obj = {
			'width': this.offsetWidth,
			'height': this.offsetHeight,
			'left': position.x,
			'top': position.y
		};
		obj.right = obj.left + obj.width;
		obj.bottom = obj.top + obj.height;
		return obj;
	}

});

/*
Script: Window.DomReady.js
	Contains the custom event domready, for window.

License:
	MIT-style license.
*/

/* Section: Custom Events */

/*
Event: domready
	executes a function when the dom tree is loaded, without waiting for images. Only works when called from window.

Credits:
	(c) Dean Edwards/Matthias Miller/John Resig, remastered for MooTools.

Arguments:
	fn - the function to execute when the DOM is ready

Example:
	> window.addEvent('domready', function(){
	>	alert('the dom is ready');
	> });
*/

Element.Events.domready = {

	add: function(fn){
		if (window.loaded){
			fn.call(this);
			return;
		}
		var domReady = function(){
			if (window.loaded) return;
			window.loaded = true;
			window.timer = $clear(window.timer);
			this.fireEvent('domready');
		}.bind(this);
		if (document.readyState && window.webkit){
			window.timer = function(){
				if (['loaded','complete'].contains(document.readyState)) domReady();
			}.periodical(50);
		} else if (document.readyState && window.ie){
			if (!$('ie_ready')){
				var src = (window.location.protocol == 'https:') ? '://0' : 'javascript:void(0)';
				document.write('<script id="ie_ready" defer src="' + src + '"><\/script>');
				$('ie_ready').onreadystatechange = function(){
					if (this.readyState == 'complete') domReady();
				};
			}
		} else {
			window.addListener("load", domReady);
			document.addListener("DOMContentLoaded", domReady);
		}
	}

};

/*compatibility*/

window.onDomReady = function(fn){ 
	return this.addEvent('domready', fn); 
};

/*end compatibility*/

/*
Script: Window.Size.js
	Window cross-browser dimensions methods.
	
Note:
	The Functions in this script require an XHTML doctype.

License:
	MIT-style license.
*/

/*
Class: window
	Cross browser methods to get various window dimensions.
	Warning: All these methods require that the browser operates in strict mode, not quirks mode.
*/

window.extend({

	/*
	Property: getWidth
		Returns an integer representing the width of the browser window (without the scrollbar).
	*/

	getWidth: function(){
		if (this.webkit419) return this.innerWidth;
		if (this.opera) return document.body.clientWidth;
		return document.documentElement.clientWidth;
	},

	/*
	Property: getHeight
		Returns an integer representing the height of the browser window (without the scrollbar).
	*/

	getHeight: function(){
		if (this.webkit419) return this.innerHeight;
		if (this.opera) return document.body.clientHeight;
		return document.documentElement.clientHeight;
	},

	/*
	Property: getScrollWidth
		Returns an integer representing the scrollWidth of the window.
		This value is equal to or bigger than <getWidth>.

	See Also:
		<http://developer.mozilla.org/en/docs/DOM:element.scrollWidth>
	*/

	getScrollWidth: function(){
		if (this.ie) return Math.max(document.documentElement.offsetWidth, document.documentElement.scrollWidth);
		if (this.webkit) return document.body.scrollWidth;
		return document.documentElement.scrollWidth;
	},

	/*
	Property: getScrollHeight
		Returns an integer representing the scrollHeight of the window.
		This value is equal to or bigger than <getHeight>.

	See Also:
		<http://developer.mozilla.org/en/docs/DOM:element.scrollHeight>
	*/

	getScrollHeight: function(){
		if (this.ie) return Math.max(document.documentElement.offsetHeight, document.documentElement.scrollHeight);
		if (this.webkit) return document.body.scrollHeight;
		return document.documentElement.scrollHeight;
	},

	/*
	Property: getScrollLeft
		Returns an integer representing the scrollLeft of the window (the number of pixels the window has scrolled from the left).

	See Also:
		<http://developer.mozilla.org/en/docs/DOM:element.scrollLeft>
	*/

	getScrollLeft: function(){
		return this.pageXOffset || document.documentElement.scrollLeft;
	},

	/*
	Property: getScrollTop
		Returns an integer representing the scrollTop of the window (the number of pixels the window has scrolled from the top).

	See Also:
		<http://developer.mozilla.org/en/docs/DOM:element.scrollTop>
	*/

	getScrollTop: function(){
		return this.pageYOffset || document.documentElement.scrollTop;
	},

	/*
	Property: getSize
		Same as <Element.getSize>
	*/

	getSize: function(){
		return {
			'size': {'x': this.getWidth(), 'y': this.getHeight()},
			'scrollSize': {'x': this.getScrollWidth(), 'y': this.getScrollHeight()},
			'scroll': {'x': this.getScrollLeft(), 'y': this.getScrollTop()}
		};
	},

	//ignore
	getPosition: function(){return {'x': 0, 'y': 0};}

});

/*
Script: Fx.Base.js
	Contains <Fx.Base>, the foundamentals of the MooTools Effects.

License:
	MIT-style license.
*/

var Fx = {};

/*
Class: Fx.Base
	Base class for the Effects.

Options:
	transition - the equation to use for the effect see <Fx.Transitions>; default is <Fx.Transitions.Sine.easeInOut>
	duration - the duration of the effect in ms; 500 is the default.
	unit - the unit is 'px' by default (other values include things like 'em' for fonts or '%').
	wait - boolean: to wait or not to wait for a current transition to end before running another of the same instance. defaults to true.
	fps - the frames per second for the transition; default is 50
	
Events:
	onStart - the function to execute as the effect begins; nothing (<Class.empty>) by default.
	onComplete - the function to execute after the effect has processed; nothing (<Class.empty>) by default.
	onCancel - the function to execute when you manually stop the effect.
*/

Fx.Base = new Class({

	options: {
		onStart: Class.empty,
		onComplete: Class.empty,
		onCancel: Class.empty,
		transition: function(p){
			return -(Math.cos(Math.PI * p) - 1) / 2;
		},
		duration: 500,
		unit: 'px',
		wait: true,
		fps: 50
	},

	initialize: function(options){
		this.element = this.element || null;
		this.setOptions(options);
		if (this.options.initialize) this.options.initialize.call(this);
	},

	step: function(){
		var time = $time();
		if (time < this.time + this.options.duration){
			this.delta = this.options.transition((time - this.time) / this.options.duration);
			this.setNow();
			this.increase();
		} else {
			this.stop(true);
			this.set(this.to);
			this.fireEvent('onComplete', this.element, 10);
			this.callChain();
		}
	},

	/*
	Property: set
		Immediately sets the value with no transition.

	Arguments:
		to - the point to jump to

	Example:
		>var myFx = new Fx.Style('myElement', 'opacity').set(0); //will make it immediately transparent
	*/

	set: function(to){
		this.now = to;
		this.increase();
		return this;
	},

	setNow: function(){
		this.now = this.compute(this.from, this.to);
	},

	compute: function(from, to){
		return (to - from) * this.delta + from;
	},

	/*
	Property: start
		Executes an effect from one position to the other.

	Arguments:
		from - integer: staring value
		to - integer: the ending value

	Examples:
		>var myFx = new Fx.Style('myElement', 'opacity').start(0,1); //display a transition from transparent to opaque.
	*/

	start: function(from, to){
		if (!this.options.wait) this.stop();
		else if (this.timer) return this;
		this.from = from;
		this.to = to;
		this.change = this.to - this.from;
		this.time = $time();
		this.timer = this.step.periodical(Math.round(1000 / this.options.fps), this);
		this.fireEvent('onStart', this.element);
		return this;
	},

	/*
	Property: stop
		Stops the transition.
	*/

	stop: function(end){
		if (!this.timer) return this;
		this.timer = $clear(this.timer);
		if (!end) this.fireEvent('onCancel', this.element);
		return this;
	}/*compatibility*/,
	
	custom: function(from, to){
		return this.start(from, to);
	},

	clearTimer: function(end){
		return this.stop(end);
	}

	/*end compatibility*/

});

Fx.Base.implement(new Chain, new Events, new Options);

/*
Script: Fx.CSS.js
	Css parsing class for effects. Required by <Fx.Style>, <Fx.Styles>, <Fx.Elements>. No documentation needed, as its used internally.

License:
	MIT-style license.
*/

Fx.CSS = {

	select: function(property, to){
		if (property.test(/color/i)) return this.Color;
		var type = $type(to);
		if ((type == 'array') || (type == 'string' && to.contains(' '))) return this.Multi;
		return this.Single;
	},

	parse: function(el, property, fromTo){
		if (!fromTo.push) fromTo = [fromTo];
		var from = fromTo[0], to = fromTo[1];
		if (!$chk(to)){
			to = from;
			from = el.getStyle(property);
		}
		var css = this.select(property, to);
		return {'from': css.parse(from), 'to': css.parse(to), 'css': css};
	}

};

Fx.CSS.Single = {

	parse: function(value){
		return parseFloat(value);
	},

	getNow: function(from, to, fx){
		return fx.compute(from, to);
	},

	getValue: function(value, unit, property){
		if (unit == 'px' && property != 'opacity') value = Math.round(value);
		return value + unit;
	}

};

Fx.CSS.Multi = {

	parse: function(value){
		return value.push ? value : value.split(' ').map(function(v){
			return parseFloat(v);
		});
	},

	getNow: function(from, to, fx){
		var now = [];
		for (var i = 0; i < from.length; i++) now[i] = fx.compute(from[i], to[i]);
		return now;
	},

	getValue: function(value, unit, property){
		if (unit == 'px' && property != 'opacity') value = value.map(Math.round);
		return value.join(unit + ' ') + unit;
	}

};

Fx.CSS.Color = {

	parse: function(value){
		return value.push ? value : value.hexToRgb(true);
	},

	getNow: function(from, to, fx){
		var now = [];
		for (var i = 0; i < from.length; i++) now[i] = Math.round(fx.compute(from[i], to[i]));
		return now;
	},

	getValue: function(value){
		return 'rgb(' + value.join(',') + ')';
	}

};

/*
Script: Fx.Style.js
	Contains <Fx.Style>

License:
	MIT-style license.
*/

/*
Class: Fx.Style
	The Style effect, used to transition any css property from one value to another. Includes colors.
	Colors must be in hex format.
	Inherits methods, properties, options and events from <Fx.Base>.

Arguments:
	el - the $(element) to apply the style transition to
	property - the property to transition
	options - the Fx.Base options (see: <Fx.Base>)

Example:
	>var marginChange = new Fx.Style('myElement', 'margin-top', {duration:500});
	>marginChange.start(10, 100);
*/

Fx.Style = Fx.Base.extend({

	initialize: function(el, property, options){
		this.element = $(el);
		this.property = property;
		this.parent(options);
	},

	/*
	Property: hide
		Same as <Fx.Base.set> (0); hides the element immediately without transition.
	*/

	hide: function(){
		return this.set(0);
	},

	setNow: function(){
		this.now = this.css.getNow(this.from, this.to, this);
	},

	/*
	Property: set
		Sets the element's css property (specified at instantiation) to the specified value immediately.

	Example:
		(start code)
		var marginChange = new Fx.Style('myElement', 'margin-top', {duration:500});
		marginChange.set(10); //margin-top is set to 10px immediately
		(end)
	*/

	set: function(to){
		this.css = Fx.CSS.select(this.property, to);
		return this.parent(this.css.parse(to));
	},

	/*
	Property: start
		Displays the transition to the value/values passed in

	Arguments:
		from - (integer; optional) the starting position for the transition
		to - (integer) the ending position for the transition

	Note:
		If you provide only one argument, the transition will use the current css value for its starting value.

	Example:
		(start code)
		var marginChange = new Fx.Style('myElement', 'margin-top', {duration:500});
		marginChange.start(10); //tries to read current margin top value and goes from current to 10
		(end)
	*/

	start: function(from, to){
		if (this.timer && this.options.wait) return this;
		var parsed = Fx.CSS.parse(this.element, this.property, [from, to]);
		this.css = parsed.css;
		return this.parent(parsed.from, parsed.to);
	},

	increase: function(){
		this.element.setStyle(this.property, this.css.getValue(this.now, this.options.unit, this.property));
	}

});

/*
Class: Element
	Custom class to allow all of its methods to be used with any DOM element via the dollar function <$>.
*/

Element.extend({

	/*
	Property: effect
		Applies an <Fx.Style> to the Element; This a shortcut for <Fx.Style>.

	Arguments:
		property - (string) the css property to alter
		options - (object; optional) key/value set of options (see <Fx.Style>)

	Example:
		>var myEffect = $('myElement').effect('height', {duration: 1000, transition: Fx.Transitions.linear});
		>myEffect.start(10, 100);
		>//OR
		>$('myElement').effect('height', {duration: 1000, transition: Fx.Transitions.linear}).start(10,100);
	*/

	effect: function(property, options){
		return new Fx.Style(this, property, options);
	}

});

/*
Script: Fx.Styles.js
	Contains <Fx.Styles>

License:
	MIT-style license.
*/

/*
Class: Fx.Styles
	Allows you to animate multiple css properties at once;
	Colors must be in hex format.
	Inherits methods, properties, options and events from <Fx.Base>.

Arguments:
	el - the $(element) to apply the styles transition to
	options - the fx options (see: <Fx.Base>)

Example:
	(start code)
	var myEffects = new Fx.Styles('myElement', {duration: 1000, transition: Fx.Transitions.linear});

	//height from 10 to 100 and width from 900 to 300
	myEffects.start({
		'height': [10, 100],
		'width': [900, 300]
	});

	//or height from current height to 100 and width from current width to 300
	myEffects.start({
		'height': 100,
		'width': 300
	});
	(end)
*/

Fx.Styles = Fx.Base.extend({

	initialize: function(el, options){
		this.element = $(el);
		this.parent(options);
	},

	setNow: function(){
		for (var p in this.from) this.now[p] = this.css[p].getNow(this.from[p], this.to[p], this);
	},

	set: function(to){
		var parsed = {};
		this.css = {};
		for (var p in to){
			this.css[p] = Fx.CSS.select(p, to[p]);
			parsed[p] = this.css[p].parse(to[p]);
		}
		return this.parent(parsed);
	},

	/*
	Property: start
		Executes a transition for any number of css properties in tandem.

	Arguments:
		obj - an object containing keys that specify css properties to alter and values that specify either the from/to values (as an array) or just the end value (an integer).

	Example:
		see <Fx.Styles>
	*/

	start: function(obj){
		if (this.timer && this.options.wait) return this;
		this.now = {};
		this.css = {};
		var from = {}, to = {};
		for (var p in obj){
			var parsed = Fx.CSS.parse(this.element, p, obj[p]);
			from[p] = parsed.from;
			to[p] = parsed.to;
			this.css[p] = parsed.css;
		}
		return this.parent(from, to);
	},

	increase: function(){
		for (var p in this.now) this.element.setStyle(p, this.css[p].getValue(this.now[p], this.options.unit, p));
	}

});

/*
Class: Element
	Custom class to allow all of its methods to be used with any DOM element via the dollar function <$>.
*/

Element.extend({

	/*
	Property: effects
		Applies an <Fx.Styles> to the Element; This a shortcut for <Fx.Styles>.

	Example:
		>var myEffects = $(myElement).effects({duration: 1000, transition: Fx.Transitions.Sine.easeInOut});
 		>myEffects.start({'height': [10, 100], 'width': [900, 300]});
	*/

	effects: function(options){
		return new Fx.Styles(this, options);
	}

});

/*
Script: Fx.Elements.js
	Contains <Fx.Elements>

License:
	MIT-style license.
*/

/*
Class: Fx.Elements
	Fx.Elements allows you to apply any number of styles transitions to a selection of elements. Includes colors (must be in hex format).
	Inherits methods, properties, options and events from <Fx.Base>.

Arguments:
	elements - a collection of elements the effects will be applied to.
	options - same as <Fx.Base> options.
*/

Fx.Elements = Fx.Base.extend({

	initialize: function(elements, options){
		this.elements = $$(elements);
		this.parent(options);
	},

	setNow: function(){
		for (var i in this.from){
			var iFrom = this.from[i], iTo = this.to[i], iCss = this.css[i], iNow = this.now[i] = {};
			for (var p in iFrom) iNow[p] = iCss[p].getNow(iFrom[p], iTo[p], this);
		}
	},

	set: function(to){
		var parsed = {};
		this.css = {};
		for (var i in to){
			var iTo = to[i], iCss = this.css[i] = {}, iParsed = parsed[i] = {};
			for (var p in iTo){
				iCss[p] = Fx.CSS.select(p, iTo[p]);
				iParsed[p] = iCss[p].parse(iTo[p]);
			}
		}
		return this.parent(parsed);
	},

	/*
	Property: start
		Applies the passed in style transitions to each object named (see example). Each item in the collection is refered to as a numerical string ("1" for instance). The first item is "0", the second "1", etc.

	Example:
		(start code)
		var myElementsEffects = new Fx.Elements($$('a'));
		myElementsEffects.start({
			'0': { //let's change the first element's opacity and width
				'opacity': [0,1],
				'width': [100,200]
			},
			'4': { //and the fifth one's opacity
				'opacity': [0.2, 0.5]
			}
		});
		(end)
	*/

	start: function(obj){
		if (this.timer && this.options.wait) return this;
		this.now = {};
		this.css = {};
		var from = {}, to = {};
		for (var i in obj){
			var iProps = obj[i], iFrom = from[i] = {}, iTo = to[i] = {}, iCss = this.css[i] = {};
			for (var p in iProps){
				var parsed = Fx.CSS.parse(this.elements[i], p, iProps[p]);
				iFrom[p] = parsed.from;
				iTo[p] = parsed.to;
				iCss[p] = parsed.css;
			}
		}
		return this.parent(from, to);
	},

	increase: function(){
		for (var i in this.now){
			var iNow = this.now[i], iCss = this.css[i];
			for (var p in iNow) this.elements[i].setStyle(p, iCss[p].getValue(iNow[p], this.options.unit, p));
		}
	}

});

/*
Script: Fx.Scroll.js
	Contains <Fx.Scroll>

License:
	MIT-style license.
*/

/*
Class: Fx.Scroll
	Scroll any element with an overflow, including the window element.
	Inherits methods, properties, options and events from <Fx.Base>.

Note:
	Fx.Scroll requires an XHTML doctype.

Arguments:
	element - the element to scroll
	options - optional, see Options below.

Options:
	all the Fx.Base options and events, plus:
	offset - the distance for the scrollTo point/element. an Object with x/y properties.
	overflown - an array of nested scrolling containers, see <Element.getPosition>
*/

Fx.Scroll = Fx.Base.extend({

	options: {
		overflown: [],
		offset: {'x': 0, 'y': 0},
		wheelStops: true
	},

	initialize: function(element, options){
		this.now = [];
		this.element = $(element);
		this.bound = {'stop': this.stop.bind(this, false)};
		this.parent(options);
		if (this.options.wheelStops){
			this.addEvent('onStart', function(){
				document.addEvent('mousewheel', this.bound.stop);
			}.bind(this));
			this.addEvent('onComplete', function(){
				document.removeEvent('mousewheel', this.bound.stop);
			}.bind(this));
		}
	},

	setNow: function(){
		for (var i = 0; i < 2; i++) this.now[i] = this.compute(this.from[i], this.to[i]);
	},

	/*
	Property: scrollTo
		Scrolls the chosen element to the x/y coordinates.

	Arguments:
		x - the x coordinate to scroll the element to
		y - the y coordinate to scroll the element to
	*/

	scrollTo: function(x, y){
		if (this.timer && this.options.wait) return this;
		var el = this.element.getSize();
		var values = {'x': x, 'y': y};
		for (var z in el.size){
			var max = el.scrollSize[z] - el.size[z];
			if ($chk(values[z])) values[z] = ($type(values[z]) == 'number') ? values[z].limit(0, max) : max;
			else values[z] = el.scroll[z];
			values[z] += this.options.offset[z];
		}
		return this.start([el.scroll.x, el.scroll.y], [values.x, values.y]);
	},

	/*
	Property: toTop
		Scrolls the chosen element to its maximum top.
	*/

	toTop: function(){
		return this.scrollTo(false, 0);
	},

	/*
	Property: toBottom
		Scrolls the chosen element to its maximum bottom.
	*/

	toBottom: function(){
		return this.scrollTo(false, 'full');
	},

	/*
	Property: toLeft
		Scrolls the chosen element to its maximum left.
	*/

	toLeft: function(){
		return this.scrollTo(0, false);
	},

	/*
	Property: toRight
		Scrolls the chosen element to its maximum right.
	*/

	toRight: function(){
		return this.scrollTo('full', false);
	},

	/*
	Property: toElement
		Scrolls the specified element to the position the passed in element is found.

	Arguments:
		el - the $(element) to scroll the window to
	*/

	toElement: function(el){
		var parent = this.element.getPosition(this.options.overflown);
		var target = $(el).getPosition(this.options.overflown);
		return this.scrollTo(target.x - parent.x, target.y - parent.y);
	},

	increase: function(){
		this.element.scrollTo(this.now[0], this.now[1]);
	}

});

/*
Script: Fx.Slide.js
	Contains <Fx.Slide>

License:
	MIT-style license.
*/

/*
Class: Fx.Slide
	The slide effect; slides an element in horizontally or vertically, the contents will fold inside.
	Inherits methods, properties, options and events from <Fx.Base>.
	
Note:
	Fx.Slide requires an XHTML doctype.

Options:
	mode - set it to vertical or horizontal. Defaults to vertical.
	options - all the <Fx.Base> options

Example:
	(start code)
	var mySlider = new Fx.Slide('myElement', {duration: 500});
	mySlider.toggle() //toggle the slider up and down.
	(end)
*/

Fx.Slide = Fx.Base.extend({

	options: {
		mode: 'vertical'
	},

	initialize: function(el, options){
		this.element = $(el);
		this.wrapper = new Element('div', {'styles': $extend(this.element.getStyles('margin'), {'overflow': 'hidden'})}).injectAfter(this.element).adopt(this.element);
		this.element.setStyle('margin', 0);
		this.setOptions(options);
		this.now = [];
		this.parent(this.options);
		this.open = true;
		this.addEvent('onComplete', function(){
			this.open = (this.now[0] === 0);
		});
		if (window.webkit419) this.addEvent('onComplete', function(){
			if (this.open) this.element.remove().inject(this.wrapper);
		});
	},

	setNow: function(){
		for (var i = 0; i < 2; i++) this.now[i] = this.compute(this.from[i], this.to[i]);
	},

	vertical: function(){
		this.margin = 'margin-top';
		this.layout = 'height';
		this.offset = this.element.offsetHeight;
	},

	horizontal: function(){
		this.margin = 'margin-left';
		this.layout = 'width';
		this.offset = this.element.offsetWidth;
	},

	/*
	Property: slideIn
		Slides the elements in view horizontally or vertically.

	Arguments:
		mode - (optional, string) 'horizontal' or 'vertical'; defaults to options.mode.
	*/

	slideIn: function(mode){
		this[mode || this.options.mode]();
		return this.start([this.element.getStyle(this.margin).toInt(), this.wrapper.getStyle(this.layout).toInt()], [0, this.offset]);
	},

	/*
	Property: slideOut
		Sides the elements out of view horizontally or vertically.

	Arguments:
		mode - (optional, string) 'horizontal' or 'vertical'; defaults to options.mode.
	*/

	slideOut: function(mode){
		this[mode || this.options.mode]();
		return this.start([this.element.getStyle(this.margin).toInt(), this.wrapper.getStyle(this.layout).toInt()], [-this.offset, 0]);
	},

	/*
	Property: hide
		Hides the element without a transition.

	Arguments:
		mode - (optional, string) 'horizontal' or 'vertical'; defaults to options.mode.
	*/

	hide: function(mode){
		this[mode || this.options.mode]();
		this.open = false;
		return this.set([-this.offset, 0]);
	},

	/*
	Property: show
		Shows the element without a transition.

	Arguments:
		mode - (optional, string) 'horizontal' or 'vertical'; defaults to options.mode.
	*/

	show: function(mode){
		this[mode || this.options.mode]();
		this.open = true;
		return this.set([0, this.offset]);
	},

	/*
	Property: toggle
		Slides in or Out the element, depending on its state

	Arguments:
		mode - (optional, string) 'horizontal' or 'vertical'; defaults to options.mode.

	*/

	toggle: function(mode){
		if (this.wrapper.offsetHeight == 0 || this.wrapper.offsetWidth == 0) return this.slideIn(mode);
		return this.slideOut(mode);
	},

	increase: function(){
		this.element.setStyle(this.margin, this.now[0] + this.options.unit);
		this.wrapper.setStyle(this.layout, this.now[1] + this.options.unit);
	}

});

/*
Script: Fx.Transitions.js
	Effects transitions, to be used with all the effects.

License:
	MIT-style license.

Credits:
	Easing Equations by Robert Penner, <http://www.robertpenner.com/easing/>, modified & optimized to be used with mootools.
*/

/*
Class: Fx.Transitions
	A collection of tweening transitions for use with the <Fx.Base> classes.

Example:
	>//Elastic.easeOut with default values:
	>new Fx.Style('margin', {transition: Fx.Transitions.Elastic.easeOut});
	>//Elastic.easeOut with user-defined value for elasticity.
	> var myTransition = new Fx.Transition(Fx.Transitions.Elastic, 3);
	>new Fx.Style('margin', {transition: myTransition.easeOut});

See also:
	http://www.robertpenner.com/easing/
*/

Fx.Transition = function(transition, params){
	params = params || [];
	if ($type(params) != 'array') params = [params];
	return $extend(transition, {
		easeIn: function(pos){
			return transition(pos, params);
		},
		easeOut: function(pos){
			return 1 - transition(1 - pos, params);
		},
		easeInOut: function(pos){
			return (pos <= 0.5) ? transition(2 * pos, params) / 2 : (2 - transition(2 * (1 - pos), params)) / 2;
		}
	});
};

Fx.Transitions = new Abstract({

	/*
	Property: linear
		displays a linear transition.

	Graph:
		(see Linear.png)
	*/

	linear: function(p){
		return p;
	}

});

Fx.Transitions.extend = function(transitions){
	for (var transition in transitions){
		Fx.Transitions[transition] = new Fx.Transition(transitions[transition]);
		/*compatibility*/
		Fx.Transitions.compat(transition);
		/*end compatibility*/
	}
};

/*compatibility*/

Fx.Transitions.compat = function(transition){
	['In', 'Out', 'InOut'].each(function(easeType){
		Fx.Transitions[transition.toLowerCase() + easeType] = Fx.Transitions[transition]['ease' + easeType];
	});
};

/*end compatibility*/

Fx.Transitions.extend({

	/*
	Property: Quad
		displays a quadratic transition. Must be used as Quad.easeIn or Quad.easeOut or Quad.easeInOut

	Graph:
		(see Quad.png)
	*/

	//auto generated

	/*
	Property: Cubic
		displays a cubicular transition. Must be used as Cubic.easeIn or Cubic.easeOut or Cubic.easeInOut

	Graph:
		(see Cubic.png)
	*/

	//auto generated

	/*
	Property: Quart
		displays a quartetic transition. Must be used as Quart.easeIn or Quart.easeOut or Quart.easeInOut

	Graph:
		(see Quart.png)
	*/

	//auto generated

	/*
	Property: Quint
		displays a quintic transition. Must be used as Quint.easeIn or Quint.easeOut or Quint.easeInOut

	Graph:
		(see Quint.png)
	*/

	//auto generated

	/*
	Property: Pow
		Used to generate Quad, Cubic, Quart and Quint.
		By default is p^6.

	Graph:
		(see Pow.png)
	*/

	Pow: function(p, x){
		return Math.pow(p, x[0] || 6);
	},

	/*
	Property: Expo
		displays a exponential transition. Must be used as Expo.easeIn or Expo.easeOut or Expo.easeInOut

	Graph:
		(see Expo.png)
	*/

	Expo: function(p){
		return Math.pow(2, 8 * (p - 1));
	},

	/*
	Property: Circ
		displays a circular transition. Must be used as Circ.easeIn or Circ.easeOut or Circ.easeInOut

	Graph:
		(see Circ.png)
	*/

	Circ: function(p){
		return 1 - Math.sin(Math.acos(p));
	},


	/*
	Property: Sine
		displays a sineousidal transition. Must be used as Sine.easeIn or Sine.easeOut or Sine.easeInOut

	Graph:
		(see Sine.png)
	*/

	Sine: function(p){
		return 1 - Math.sin((1 - p) * Math.PI / 2);
	},

	/*
	Property: Back
		makes the transition go back, then all forth. Must be used as Back.easeIn or Back.easeOut or Back.easeInOut

	Graph:
		(see Back.png)
	*/

	Back: function(p, x){
		x = x[0] || 1.618;
		return Math.pow(p, 2) * ((x + 1) * p - x);
	},

	/*
	Property: Bounce
		makes the transition bouncy. Must be used as Bounce.easeIn or Bounce.easeOut or Bounce.easeInOut

	Graph:
		(see Bounce.png)
	*/

	Bounce: function(p){
		var value;
		for (var a = 0, b = 1; 1; a += b, b /= 2){
			if (p >= (7 - 4 * a) / 11){
				value = - Math.pow((11 - 6 * a - 11 * p) / 4, 2) + b * b;
				break;
			}
		}
		return value;
	},

	/*
	Property: Elastic
		Elastic curve. Must be used as Elastic.easeIn or Elastic.easeOut or Elastic.easeInOut

	Graph:
		(see Elastic.png)
	*/

	Elastic: function(p, x){
		return Math.pow(2, 10 * --p) * Math.cos(20 * p * Math.PI * (x[0] || 1) / 3);
	}

});

['Quad', 'Cubic', 'Quart', 'Quint'].each(function(transition, i){
	Fx.Transitions[transition] = new Fx.Transition(function(p){
		return Math.pow(p, [i + 2]);
	});
	
	/*compatibility*/
	Fx.Transitions.compat(transition);
	/*end compatibility*/
});

/*
Script: Drag.Base.js
	Contains <Drag.Base>, <Element.makeResizable>

License:
	MIT-style license.
*/

var Drag = {};

/*
Class: Drag.Base
	Modify two css properties of an element based on the position of the mouse.
	
Note:
	Drag.Base requires an XHTML doctype.

Arguments:
	el - the $(element) to apply the transformations to.
	options - optional. The options object.

Options:
	handle - the $(element) to act as the handle for the draggable element. defaults to the $(element) itself.
	modifiers - an object. see Modifiers Below.
	limit - an object, see Limit below.
	grid - optional, distance in px for snap-to-grid dragging
	snap - optional, the distance you have to drag before the element starts to respond to the drag. defaults to false

	modifiers:
		x - string, the style you want to modify when the mouse moves in an horizontal direction. defaults to 'left'
		y - string, the style you want to modify when the mouse moves in a vertical direction. defaults to 'top'

	limit:
		x - array with start and end limit relative to modifiers.x
		y - array with start and end limit relative to modifiers.y
		
Events:
	onStart - optional, function to execute when the user starts to drag (on mousedown);
	onComplete - optional, function to execute when the user completes the drag.
	onDrag - optional, function to execute at every step of the drag
*/

Drag.Base = new Class({

	options: {
		handle: false,
		unit: 'px',
		onStart: Class.empty,
		onBeforeStart: Class.empty,
		onComplete: Class.empty,
		onSnap: Class.empty,
		onDrag: Class.empty,
		limit: false,
		modifiers: {x: 'left', y: 'top'},
		grid: false,
		snap: 6
	},

	initialize: function(el, options){
		this.setOptions(options);
		this.element = $(el);
		this.handle = $(this.options.handle) || this.element;
		this.mouse = {'now': {}, 'pos': {}};
		this.value = {'start': {}, 'now': {}};
		this.bound = {
			'start': this.start.bindWithEvent(this),
			'check': this.check.bindWithEvent(this),
			'drag': this.drag.bindWithEvent(this),
			'stop': this.stop.bind(this)
		};
		this.attach();
		if (this.options.initialize) this.options.initialize.call(this);
	},

	attach: function(){
		this.handle.addEvent('mousedown', this.bound.start);
		return this;
	},

	detach: function(){
		this.handle.removeEvent('mousedown', this.bound.start);
		return this;
	},

	start: function(event){
		this.fireEvent('onBeforeStart', this.element);
		this.mouse.start = event.page;
		var limit = this.options.limit;
		this.limit = {'x': [], 'y': []};
		for (var z in this.options.modifiers){
			if (!this.options.modifiers[z]) continue;
			this.value.now[z] = this.element.getStyle(this.options.modifiers[z]).toInt();
			this.mouse.pos[z] = event.page[z] - this.value.now[z];
			if (limit && limit[z]){
				for (var i = 0; i < 2; i++){
					if ($chk(limit[z][i])) this.limit[z][i] = ($type(limit[z][i]) == 'function') ? limit[z][i]() : limit[z][i];
				}
			}
		}
		if ($type(this.options.grid) == 'number') this.options.grid = {'x': this.options.grid, 'y': this.options.grid};
		document.addListener('mousemove', this.bound.check);
		document.addListener('mouseup', this.bound.stop);
		this.fireEvent('onStart', this.element);
		event.stop();
	},

	check: function(event){
		var distance = Math.round(Math.sqrt(Math.pow(event.page.x - this.mouse.start.x, 2) + Math.pow(event.page.y - this.mouse.start.y, 2)));
		if (distance > this.options.snap){
			document.removeListener('mousemove', this.bound.check);
			document.addListener('mousemove', this.bound.drag);
			this.drag(event);
			this.fireEvent('onSnap', this.element);
		}
		event.stop();
	},

	drag: function(event){
		this.out = false;
		this.mouse.now = event.page;
		for (var z in this.options.modifiers){
			if (!this.options.modifiers[z]) continue;
			this.value.now[z] = this.mouse.now[z] - this.mouse.pos[z];
			if (this.limit[z]){
				if ($chk(this.limit[z][1]) && (this.value.now[z] > this.limit[z][1])){
					this.value.now[z] = this.limit[z][1];
					this.out = true;
				} else if ($chk(this.limit[z][0]) && (this.value.now[z] < this.limit[z][0])){
					this.value.now[z] = this.limit[z][0];
					this.out = true;
				}
			}
			if (this.options.grid[z]) this.value.now[z] -= (this.value.now[z] % this.options.grid[z]);
			this.element.setStyle(this.options.modifiers[z], this.value.now[z] + this.options.unit);
		}
		this.fireEvent('onDrag', this.element);
		event.stop();
	},

	stop: function(){
		document.removeListener('mousemove', this.bound.check);
		document.removeListener('mousemove', this.bound.drag);
		document.removeListener('mouseup', this.bound.stop);
		this.fireEvent('onComplete', this.element);
	}

});

Drag.Base.implement(new Events, new Options);

/*
Class: Element
	Custom class to allow all of its methods to be used with any DOM element via the dollar function <$>.
*/

Element.extend({

	/*
	Property: makeResizable
		Makes an element resizable (by dragging) with the supplied options.

	Arguments:
		options - see <Drag.Base> for acceptable options.
	*/

	makeResizable: function(options){
		return new Drag.Base(this, $merge({modifiers: {x: 'width', y: 'height'}}, options));
	}

});

/*
Script: Drag.Move.js
	Contains <Drag.Move>, <Element.makeDraggable>

License:
	MIT-style license.
*/

/*
Class: Drag.Move
	Extends <Drag.Base>, has additional functionality for dragging an element, support snapping and droppables.
	Drag.move supports either position absolute or relative. If no position is found, absolute will be set.
	Inherits methods, properties, options and events from <Drag.Base>.

Note:
	Drag.Move requires an XHTML doctype.

Arguments:
	el - the $(element) to apply the drag to.
	options - optional. see Options below.

Options:
	all the drag.Base options, plus:
	container - an element, will fill automatically limiting options based on the $(element) size and position. defaults to false (no limiting)
	droppables - an array of elements you can drop your draggable to.
	overflown - an array of nested scrolling containers, see Element::getPosition
*/

Drag.Move = Drag.Base.extend({

	options: {
		droppables: [],
		container: false,
		overflown: []
	},

	initialize: function(el, options){
		this.setOptions(options);
		this.element = $(el);
		this.droppables = $$(this.options.droppables);
		this.container = $(this.options.container);
		this.position = {'element': this.element.getStyle('position'), 'container': false};
		if (this.container) this.position.container = this.container.getStyle('position');
		if (!['relative', 'absolute', 'fixed'].contains(this.position.element)) this.position.element = 'absolute';
		var top = this.element.getStyle('top').toInt();
		var left = this.element.getStyle('left').toInt();
		if (this.position.element == 'absolute' && !['relative', 'absolute', 'fixed'].contains(this.position.container)){
			top = $chk(top) ? top : this.element.getTop(this.options.overflown);
			left = $chk(left) ? left : this.element.getLeft(this.options.overflown);
		} else {
			top = $chk(top) ? top : 0;
			left = $chk(left) ? left : 0;
		}
		this.element.setStyles({'top': top, 'left': left, 'position': this.position.element});
		this.parent(this.element);
	},

	start: function(event){
		this.overed = null;
		if (this.container){
			var cont = this.container.getCoordinates();
			var el = this.element.getCoordinates();
			if (this.position.element == 'absolute' && !['relative', 'absolute', 'fixed'].contains(this.position.container)){
				this.options.limit = {
					'x': [cont.left, cont.right - el.width],
					'y': [cont.top, cont.bottom - el.height]
				};
			} else {
				this.options.limit = {
					'y': [0, cont.height - el.height],
					'x': [0, cont.width - el.width]
				};
			}
		}
		this.parent(event);
	},

	drag: function(event){
		this.parent(event);
		var overed = this.out ? false : this.droppables.filter(this.checkAgainst, this).getLast();
		if (this.overed != overed){
			if (this.overed) this.overed.fireEvent('leave', [this.element, this]);
			this.overed = overed ? overed.fireEvent('over', [this.element, this]) : null;
		}
		return this;
	},

	checkAgainst: function(el){
		el = el.getCoordinates(this.options.overflown);
		var now = this.mouse.now;
		return (now.x > el.left && now.x < el.right && now.y < el.bottom && now.y > el.top);
	},

	stop: function(){
		if (this.overed && !this.out) this.overed.fireEvent('drop', [this.element, this]);
		else this.element.fireEvent('emptydrop', this);
		this.parent();
		return this;
	}

});

/*
Class: Element
	Custom class to allow all of its methods to be used with any DOM element via the dollar function <$>.
*/

Element.extend({

	/*
	Property: makeDraggable
		Makes an element draggable with the supplied options.

	Arguments:
		options - see <Drag.Move> and <Drag.Base> for acceptable options.
	*/

	makeDraggable: function(options){
		return new Drag.Move(this, options);
	}

});

/*
Script: XHR.js
	Contains the basic XMLHttpRequest Class Wrapper.

License:
	MIT-style license.
*/

/*
Class: XHR
	Basic XMLHttpRequest Wrapper.

Arguments:
	options - an object with options names as keys. See options below.

Options:
	method - 'post' or 'get' - the protocol for the request; optional, defaults to 'post'.
	async - boolean: asynchronous option; true uses asynchronous requests. Defaults to true.
	encoding - the encoding, defaults to utf-8.
	autoCancel - cancels the already running request if another one is sent. defaults to false.
	headers - accepts an object, that will be set to request headers.
	
Events:
	onRequest - function to execute when the XHR request is fired.
	onSuccess - function to execute when the XHR request completes.
	onStateChange - function to execute when the state of the XMLHttpRequest changes.
	onFailure - function to execute when the state of the XMLHttpRequest changes.

Properties:
	running - true if the request is running.
	response - object, text and xml as keys. You can access this property in the onSuccess event.

Example:
	>var myXHR = new XHR({method: 'get'}).send('http://site.com/requestHandler.php', 'name=john&lastname=dorian');
*/

var XHR = new Class({

	options: {
		method: 'post',
		async: true,
		onRequest: Class.empty,
		onSuccess: Class.empty,
		onFailure: Class.empty,
		urlEncoded: true,
		encoding: 'utf-8',
		autoCancel: false,
		headers: {}
	},

	setTransport: function(){
		this.transport = (window.XMLHttpRequest) ? new XMLHttpRequest() : (window.ie ? new ActiveXObject('Microsoft.XMLHTTP') : false);
		return this;
	},

	initialize: function(options){
		this.setTransport().setOptions(options);
		this.options.isSuccess = this.options.isSuccess || this.isSuccess;
		this.headers = {};
		if (this.options.urlEncoded && this.options.method == 'post'){
			var encoding = (this.options.encoding) ? '; charset=' + this.options.encoding : '';
			this.setHeader('Content-type', 'application/x-www-form-urlencoded' + encoding);
		}
		if (this.options.initialize) this.options.initialize.call(this);
	},

	onStateChange: function(){
		if (this.transport.readyState != 4 || !this.running) return;
		this.running = false;
		var status = 0;
		try {status = this.transport.status;} catch(e){};
		if (this.options.isSuccess.call(this, status)) this.onSuccess();
		else this.onFailure();
		this.transport.onreadystatechange = Class.empty;
	},

	isSuccess: function(status){
		return ((status >= 200) && (status < 300));
	},

	onSuccess: function(){
		this.response = {
			'text': this.transport.responseText,
			'xml': this.transport.responseXML
		};
		this.fireEvent('onSuccess', [this.response.text, this.response.xml]);
		this.callChain();
	},

	onFailure: function(){
		this.fireEvent('onFailure', this.transport);
	},

	/*
	Property: setHeader
		Add/modify an header for the request. It will not override headers from the options.

	Example:
		>var myXhr = new XHR(url, {method: 'get', headers: {'X-Request': 'JSON'}});
		>myXhr.setHeader('Last-Modified','Sat, 1 Jan 2005 05:00:00 GMT');
	*/

	setHeader: function(name, value){
		this.headers[name] = value;
		return this;
	},

	/*
	Property: send
		Opens the XHR connection and sends the data. Data has to be null or a string.

	Example:
		>var myXhr = new XHR({method: 'post'});
		>myXhr.send(url, querystring);
		>
		>var syncXhr = new XHR({async: false, method: 'post'});
		>syncXhr.send(url, null);
		>
	*/

	send: function(url, data){
		if (this.options.autoCancel) this.cancel();
		else if (this.running) return this;
		this.running = true;
		if (data && this.options.method == 'get'){
			url = url + (url.contains('?') ? '&' : '?') + data;
			data = null;
		}
		this.transport.open(this.options.method.toUpperCase(), url, this.options.async);
		this.transport.onreadystatechange = this.onStateChange.bind(this);
		if ((this.options.method == 'post') && this.transport.overrideMimeType) this.setHeader('Connection', 'close');
		$extend(this.headers, this.options.headers);
		for (var type in this.headers) try {this.transport.setRequestHeader(type, this.headers[type]);} catch(e){};
		this.fireEvent('onRequest');
		this.transport.send($pick(data, null));
		return this;
	},

	/*
	Property: cancel
		Cancels the running request. No effect if the request is not running.

	Example:
		>var myXhr = new XHR({method: 'get'}).send(url);
		>myXhr.cancel();
	*/

	cancel: function(){
		if (!this.running) return this;
		this.running = false;
		this.transport.abort();
		this.transport.onreadystatechange = Class.empty;
		this.setTransport();
		this.fireEvent('onCancel');
		return this;
	}

});

XHR.implement(new Chain, new Events, new Options);

/*
Script: Ajax.js
	Contains the <Ajax> class. Also contains methods to generate querystings from forms and Objects.

Credits:
	Loosely based on the version from prototype.js <http://prototype.conio.net>

License:
	MIT-style license.
*/

/*
Class: Ajax
	An Ajax class, For all your asynchronous needs.
	Inherits methods, properties, options and events from <XHR>.

Arguments:
	url - the url pointing to the server-side script.
	options - optional, an object containing options.

Options:
	data - you can write parameters here. Can be a querystring, an object or a Form element.
	update - $(element) to insert the response text of the XHR into, upon completion of the request.
	evalScripts - boolean; default is false. Execute scripts in the response text onComplete. When the response is javascript the whole response is evaluated.
	evalResponse - boolean; default is false. Force global evalulation of the whole response, no matter what content-type it is.
	
Events:
	onComplete - function to execute when the ajax request completes.

Example:
	>var myAjax = new Ajax(url, {method: 'get'}).request();
*/

var Ajax = XHR.extend({

	options: {
		data: null,
		update: null,
		onComplete: Class.empty,
		evalScripts: false,
		evalResponse: false
	},

	initialize: function(url, options){
		this.addEvent('onSuccess', this.onComplete);
		this.setOptions(options);
		/*compatibility*/
		this.options.data = this.options.data || this.options.postBody;
		/*end compatibility*/
		if (!['post', 'get'].contains(this.options.method)){
			this._method = '_method=' + this.options.method;
			this.options.method = 'post';
		}
		this.parent();
		this.setHeader('X-Requested-With', 'XMLHttpRequest');
		this.setHeader('Accept', 'text/javascript, text/html, application/xml, text/xml, */*');
		this.url = url;
	},

	onComplete: function(){
		if (this.options.update) $(this.options.update).empty().setHTML(this.response.text);
		if (this.options.evalScripts || this.options.evalResponse) this.evalScripts();
		this.fireEvent('onComplete', [this.response.text, this.response.xml], 20);
	},

	/*
	Property: request
		Executes the ajax request.

	Example:
		>var myAjax = new Ajax(url, {method: 'get'});
		>myAjax.request();

		OR

		>new Ajax(url, {method: 'get'}).request();
	*/

	request: function(data){
		data = data || this.options.data;
		switch($type(data)){
			case 'element': data = $(data).toQueryString(); break;
			case 'object': data = Object.toQueryString(data);
		}
		if (this._method) data = (data) ? [this._method, data].join('&') : this._method;
		return this.send(this.url, data);
	},

	/*
	Property: evalScripts
		Executes scripts in the response text
	*/

	evalScripts: function(){
		var script, scripts;
		if (this.options.evalResponse || (/(ecma|java)script/).test(this.getHeader('Content-type'))) scripts = this.response.text;
		else {
			scripts = [];
			var regexp = /<script[^>]*>([\s\S]*?)<\/script>/gi;
			while ((script = regexp.exec(this.response.text))) scripts.push(script[1]);
			scripts = scripts.join('\n');
		}
		if (scripts) (window.execScript) ? window.execScript(scripts) : window.setTimeout(scripts, 0);
	},

	/*
	Property: getHeader
		Returns the given response header or null
	*/

	getHeader: function(name){
		try {return this.transport.getResponseHeader(name);} catch(e){};
		return null;
	}

});

/* Section: Object related Functions */

/*
Function: Object.toQueryString
	Generates a querystring from key/pair values in an object

Arguments:
	source - the object to generate the querystring from.

Returns:
	the query string.

Example:
	>Object.toQueryString({apple: "red", lemon: "yellow"}); //returns "apple=red&lemon=yellow"
*/

Object.toQueryString = function(source){
	var queryString = [];
	for (var property in source) queryString.push(encodeURIComponent(property) + '=' + encodeURIComponent(source[property]));
	return queryString.join('&');
};

/*
Class: Element
	Custom class to allow all of its methods to be used with any DOM element via the dollar function <$>.
*/

Element.extend({

	/*
	Property: send
		Sends a form with an ajax post request

	Arguments:
		options - option collection for ajax request. See <Ajax> for the options list.

	Returns:
		The Ajax Class Instance

	Example:
		(start code)
		<form id="myForm" action="submit.php">
		<input name="email" value="bob@bob.com">
		<input name="zipCode" value="90210">
		</form>
		<script>
		$('myForm').send()
		</script>
		(end)
	*/

	send: function(options){
		return new Ajax(this.getProperty('action'), $merge({data: this.toQueryString()}, options, {method: 'post'})).request();
	}

});

/*
Script: Cookie.js
	A cookie reader/creator

Credits:
	based on the functions by Peter-Paul Koch (http://quirksmode.org)
*/

/*
Class: Cookie
	Class for creating, getting, and removing cookies.
*/

var Cookie = new Abstract({

	options: {
		domain: false,
		path: false,
		duration: false,
		secure: false
	},

	/*
	Property: set
		Sets a cookie in the browser.

	Arguments:
		key - the key (name) for the cookie
		value - the value to set, cannot contain semicolons
		options - an object representing the Cookie options. See Options below. Default values are stored in Cookie.options.

	Options:
		domain - the domain the Cookie belongs to. If you want to share the cookie with pages located on a different domain, you have to set this value. Defaults to the current domain.
		path - the path the Cookie belongs to. If you want to share the cookie with pages located in a different path, you have to set this value, for example to "/" to share the cookie with all pages on the domain. Defaults to the current path.
		duration - the duration of the Cookie before it expires, in days.
					If set to false or 0, the cookie will be a session cookie that expires when the browser is closed. This is default.
		secure - Stored cookie information can be accessed only from a secure environment.

	Returns:
		An object with the options, the key and the value. You can give it as first parameter to Cookie.remove.

	Example:
		>Cookie.set('username', 'Harald'); // session cookie (duration is false), or ...
		>Cookie.set('username', 'JackBauer', {duration: 1}); // save this for 1 day

	*/

	set: function(key, value, options){
		options = $merge(this.options, options);
		value = encodeURIComponent(value);
		if (options.domain) value += '; domain=' + options.domain;
		if (options.path) value += '; path=' + options.path;
		if (options.duration){
			var date = new Date();
			date.setTime(date.getTime() + options.duration * 24 * 60 * 60 * 1000);
			value += '; expires=' + date.toGMTString();
		}
		if (options.secure) value += '; secure';
		document.cookie = key + '=' + value;
		return $extend(options, {'key': key, 'value': value});
	},

	/*
	Property: get
		Gets the value of a cookie.

	Arguments:
		key - the name of the cookie you wish to retrieve.

	Returns:
		The cookie string value, or false if not found.

	Example:
		>Cookie.get("username") //returns JackBauer
	*/

	get: function(key){
		var value = document.cookie.match('(?:^|;)\\s*' + key.escapeRegExp() + '=([^;]*)');
		return value ? decodeURIComponent(value[1]) : false;
	},

	/*
	Property: remove
		Removes a cookie from the browser.

	Arguments:
		cookie - the name of the cookie to remove or a previous cookie (for domains)
		options - optional. you can also pass the domain and path here. Same as options in <Cookie.set>

	Examples:
		>Cookie.remove('username') //bye-bye JackBauer, cya in 24 hours
		>
		>var myCookie = Cookie.set('username', 'Aaron', {domain: 'mootools.net'}); // Cookie.set returns an object with all values need to remove the cookie
		>Cookie.remove(myCookie);
	*/

	remove: function(cookie, options){
		if ($type(cookie) == 'object') this.set(cookie.key, '', $merge(cookie, {duration: -1}));
		else this.set(cookie, '', $merge(options, {duration: -1}));
	}

});

/*
Script: Json.js
	Simple Json parser and Stringyfier, See: <http://www.json.org/>

License:
	MIT-style license.
*/

/*
Class: Json
	Simple Json parser and Stringyfier, See: <http://www.json.org/>
*/

var Json = {

	/*
	Property: toString
		Converts an object to a string, to be passed in server-side scripts as a parameter. Although its not normal usage for this class, this method can also be used to convert functions and arrays to strings.

	Arguments:
		obj - the object to convert to string

	Returns:
		A json string

	Example:
		(start code)
		Json.toString({apple: 'red', lemon: 'yellow'}); '{"apple":"red","lemon":"yellow"}'
		(end)
	*/

	toString: function(obj){
		switch($type(obj)){
			case 'string':
				return '"' + obj.replace(/(["\\])/g, '\\$1') + '"';
			case 'array':
				return '[' + obj.map(Json.toString).join(',') + ']';
			case 'object':
				var string = [];
				for (var property in obj) string.push(Json.toString(property) + ':' + Json.toString(obj[property]));
				return '{' + string.join(',') + '}';
			case 'number':
				if (isFinite(obj)) break;
			case false:
				return 'null';
		}
		return String(obj);
	},

	/*
	Property: evaluate
		converts a json string to an javascript Object.

	Arguments:
		str - the string to evaluate. if its not a string, it returns false.
		secure - optionally, performs syntax check on json string. Defaults to false.

	Credits:
		Json test regexp is by Douglas Crockford <http://crockford.org>.

	Example:
		>var myObject = Json.evaluate('{"apple":"red","lemon":"yellow"}');
		>//myObject will become {apple: 'red', lemon: 'yellow'}
	*/

	evaluate: function(str, secure){
		return (($type(str) != 'string') || (secure && !str.test(/^("(\\.|[^"\\\n\r])*?"|[,:{}\[\]0-9.\-+Eaeflnr-u \n\r\t])+?$/))) ? null : eval('(' + str + ')');
	}

};

/*
Script: Json.Remote.js
	Contains <Json.Remote>.

License:
	MIT-style license.
*/

/*
Class: Json.Remote
	Wrapped XHR with automated sending and receiving of Javascript Objects in Json Format.
	Inherits methods, properties, options and events from <XHR>.

Arguments:
	url - the url you want to send your object to.
	options - see <XHR> options

Example:
	this code will send user information based on name/last name
	(start code)
	var jSonRequest = new Json.Remote("http://site.com/tellMeAge.php", {onComplete: function(person){
		alert(person.age); //is 25 years
		alert(person.height); //is 170 cm
		alert(person.weight); //is 120 kg
	}}).send({'name': 'John', 'lastName': 'Doe'});
	(end)
*/

Json.Remote = XHR.extend({

	initialize: function(url, options){
		this.url = url;
		this.addEvent('onSuccess', this.onComplete);
		this.parent(options);
		this.setHeader('X-Request', 'JSON');
	},

	send: function(obj){
		return this.parent(this.url, 'json=' + Json.toString(obj));
	},

	onComplete: function(){
		this.fireEvent('onComplete', [Json.evaluate(this.response.text, this.options.secure)]);
	}

});

/*
Script: Assets.js
	provides dynamic loading for images, css and javascript files.

License:
	MIT-style license.
*/

var Asset = new Abstract({

	/*
	Property: javascript
		Injects a javascript file in the page.

	Arguments:
		source - the path of the javascript file
		properties - some additional attributes you might want to add to the script element

	Example:
		> new Asset.javascript('/scripts/myScript.js', {id: 'myScript'});
	*/

	javascript: function(source, properties){
		properties = $merge({
			'onload': Class.empty
		}, properties);
		var script = new Element('script', {'src': source}).addEvents({
			'load': properties.onload,
			'readystatechange': function(){
				if (this.readyState == 'complete') this.fireEvent('load');
			}
		});
		delete properties.onload;
		return script.setProperties(properties).inject(document.head);
	},

	/*
	Property: css
		Injects a css file in the page.

	Arguments:
		source - the path of the css file
		properties - some additional attributes you might want to add to the link element

	Example:
		> new Asset.css('/css/myStyle.css', {id: 'myStyle', title: 'myStyle'});
	*/

	css: function(source, properties){
		return new Element('link', $merge({
			'rel': 'stylesheet', 'media': 'screen', 'type': 'text/css', 'href': source
		}, properties)).inject(document.head);
	},

	/*
	Property: image
		Preloads an image and returns the img element. does not inject it to the page.

	Arguments:
		source - the path of the image file
		properties - some additional attributes you might want to add to the img element

	Example:
		> new Asset.image('/images/myImage.png', {id: 'myImage', title: 'myImage', onload: myFunction});

	Returns:
		the img element. you can inject it anywhere you want with <Element.injectInside>/<Element.injectAfter>/<Element.injectBefore>
	*/

	image: function(source, properties){
		properties = $merge({
			'onload': Class.empty,
			'onabort': Class.empty,
			'onerror': Class.empty
		}, properties);
		var image = new Image();
		image.src = source;
		var element = new Element('img', {'src': source});
		['load', 'abort', 'error'].each(function(type){
			var event = properties['on' + type];
			delete properties['on' + type];
			element.addEvent(type, function(){
				this.removeEvent(type, arguments.callee);
				event.call(this);
			});
		});
		if (image.width && image.height) element.fireEvent('load', element, 1);
		return element.setProperties(properties);
	},

	/*
	Property: images
		Preloads an array of images (as strings) and returns an array of img elements. does not inject them to the page.

	Arguments:
		sources - array, the paths of the image files
		options - object, see below

	Options:
		onComplete - a function to execute when all image files are loaded in the browser's cache
		onProgress - a function to execute when one image file is loaded in the browser's cache

	Example:
		(start code)
		new Asset.images(['/images/myImage.png', '/images/myImage2.gif'], {
			onComplete: function(){
				alert('all images loaded!');
			}
		});
		(end)

	Returns:
		the img elements as $$. you can inject them anywhere you want with <Element.injectInside>/<Element.injectAfter>/<Element.injectBefore>
	*/

	images: function(sources, options){
		options = $merge({
			onComplete: Class.empty,
			onProgress: Class.empty
		}, options);
		if (!sources.push) sources = [sources];
		var images = [];
		var counter = 0;
		sources.each(function(source){
			var img = new Asset.image(source, {
				'onload': function(){
					options.onProgress.call(this, counter);
					counter++;
					if (counter == sources.length) options.onComplete();
				}
			});
			images.push(img);
		});
		return new Elements(images);
	}

});

/*
Script: Hash.js
	Contains the class Hash.

License:
	MIT-style license.
*/

/*
Class: Hash
	It wraps an object that it uses internally as a map. The user must use set(), get(), and remove() to add/change, retrieve and remove values, it must not access the internal object directly. null/undefined values are allowed.

Note:
	Each hash instance has the length property.

Arguments:
	obj - an object to convert into a Hash instance.

Example:
	(start code)
	var hash = new Hash({a: 'hi', b: 'world', c: 'howdy'});
	hash.remove('b'); // b is removed.
	hash.set('c', 'hello');
	hash.get('c'); // returns 'hello'
	hash.length // returns 2 (a and c)
	(end)
*/

var Hash = new Class({

	length: 0,

	initialize: function(object){
		this.obj = object || {};
		this.setLength();
	},

	/*
	Property: get
		Retrieves a value from the hash.

	Arguments:
		key - The key

	Returns:
		The value
	*/

	get: function(key){
		return (this.hasKey(key)) ? this.obj[key] : null;
	},

	/*
	Property: hasKey
		Check the presence of a specified key-value pair in the hash.

	Arguments:
		key - The key

	Returns:
		True if the Hash contains a value for the specified key, otherwise false
	*/

	hasKey: function(key){
		return (key in this.obj);
	},

	/*
	Property: set
		Adds a key-value pair to the hash or replaces a previous value associated with the key.

	Arguments:
		key - The key
		value - The value
	*/

	set: function(key, value){
		if (!this.hasKey(key)) this.length++;
		this.obj[key] = value;
		return this;
	},

	setLength: function(){
		this.length = 0;
		for (var p in this.obj) this.length++;
		return this;
	},

	/*
	Property: remove
		Removes a key-value pair from the hash.

	Arguments:
		key - The key
	*/

	remove: function(key){
		if (this.hasKey(key)){
			delete this.obj[key];
			this.length--;
		}
		return this;
	},

	/*
	Property: each
		Calls a function for each key-value pair. The first argument passed to the function will be the value, the second one will be the key, like $each.

	Arguments:
		fn - The function to call for each key-value pair
		bind - Optional, the object that will be referred to as "this" in the function
	*/

	each: function(fn, bind){
		$each(this.obj, fn, bind);
	},

	/*
	Property: extend
		Extends the current hash with an object containing key-value pairs. Values for duplicate keys will be replaced by the new ones.

	Arguments:
		obj - An object containing key-value pairs
	*/

	extend: function(obj){
		$extend(this.obj, obj);
		return this.setLength();
	},

	/*
	Property: merge
		Merges the current hash with multiple objects.
	*/

	merge: function(){
		this.obj = $merge.apply(null, [this.obj].extend(arguments));
		return this.setLength();
	},

	/*
	Property: empty
		Empties all hash values properties and values.
	*/

	empty: function(){
		this.obj = {};
		this.length = 0;
		return this;
	},

	/*
	Property: keys
		Returns an array containing all the keys, in the same order as the values returned by <Hash.values>.

	Returns:
		An array containing all the keys of the hash
	*/

	keys: function(){
		var keys = [];
		for (var property in this.obj) keys.push(property);
		return keys;
	},

	/*
	Property: values
		Returns an array containing all the values, in the same order as the keys returned by <Hash.keys>.

	Returns:
		An array containing all the values of the hash
	*/

	values: function(){
		var values = [];
		for (var property in this.obj) values.push(this.obj[property]);
		return values;
	}

});

/* Section: Utility Functions */

/*
Function: $H
	Shortcut to create a Hash from an Object.
*/

function $H(obj){
	return new Hash(obj);
};

/*
Script: Hash.Cookie.js
	Stores and loads an Hash as a cookie using Json format.
*/

/*
Class: Hash.Cookie
	Inherits all the methods from <Hash>, additional methods are save and load.
	Hash json string has a limit of 4kb (4096byte), so be careful with your Hash size.
	Creating a new instance automatically loads the data from the Cookie into the Hash.
	If the Hash is emptied, the cookie is also removed.

Arguments:
	name - the key (name) for the cookie
	options - options are identical to <Cookie> and are simply passed along to it.
		In addition, it has the autoSave option, to save the cookie at every operation. defaults to true.

Example:
	(start code)
	var fruits = new Hash.Cookie('myCookieName', {duration: 3600});
	fruits.extend({
		'lemon': 'yellow',
		'apple': 'red'
	});
	fruits.set('melon', 'green');
	fruits.get('lemon'); // yellow

	// ... on another page ... values load automatically

	var fruits = new Hash.Cookie('myCookieName', {duration: 365});
	fruits.get('melon'); // green

	fruits.erase(); // delete cookie
	(end)
*/

Hash.Cookie = Hash.extend({

	initialize: function(name, options){
		this.name = name;
		this.options = $extend({'autoSave': true}, options || {});
		this.load();
	},

	/*
	Property: save
		Saves the Hash to the cookie. If the hash is empty, removes the cookie.

	Returns:
		Returns false when the JSON string cookie is too long (4kb), otherwise true.

	Example:
		(start code)
		var login = new Hash.Cookie('userstatus', {autoSave: false});

		login.extend({
			'username': 'John',
			'credentials': [4, 7, 9]
		});
		login.set('last_message', 'User logged in!');

		login.save(); // finally save the Hash
		(end)
	*/

	save: function(){
		if (this.length == 0){
			Cookie.remove(this.name, this.options);
			return true;
		}
		var str = Json.toString(this.obj);
		if (str.length > 4096) return false; //cookie would be truncated!
		Cookie.set(this.name, str, this.options);
		return true;
	},
	
	/*
	Property: load
		Loads the cookie and assigns it to the Hash.
	*/

	load: function(){
		this.obj = Json.evaluate(Cookie.get(this.name), true) || {};
		this.setLength();
	}

});

Hash.Cookie.Methods = {};
['extend', 'set', 'merge', 'empty', 'remove'].each(function(method){
	Hash.Cookie.Methods[method] = function(){
		Hash.prototype[method].apply(this, arguments);
		if (this.options.autoSave) this.save();
		return this;
	};
});
Hash.Cookie.implement(Hash.Cookie.Methods);

/*
Script: Color.js
	Contains the Color class.

License:
	MIT-style license.
*/

/*
Class: Color
	Creates a new Color Object, which is an array with some color specific methods.
Arguments:
	color - the hex, the RGB array or the HSB array of the color to create. For HSB colors, you need to specify the second argument.
	type - a string representing the type of the color to create. needs to be specified if you intend to create the color with HSB values, or an array of HEX values. Can be 'rgb', 'hsb' or 'hex'.

Example:
	(start code)
	var black = new Color('#000');
	var purple = new Color([255,0,255]);
	// mix black with white and purple, each time at 10% of the new color
	var darkpurple = black.mix('#fff', purple, 10);
	$('myDiv').setStyle('background-color', darkpurple);
	(end)
*/

var Color = new Class({

	initialize: function(color, type){
		type = type || (color.push ? 'rgb' : 'hex');
		var rgb, hsb;
		switch(type){
			case 'rgb':
				rgb = color;
				hsb = rgb.rgbToHsb();
				break;
			case 'hsb':
				rgb = color.hsbToRgb();
				hsb = color;
				break;
			default:
				rgb = color.hexToRgb(true);
				hsb = rgb.rgbToHsb();
		}
		rgb.hsb = hsb;
		rgb.hex = rgb.rgbToHex();
		return $extend(rgb, Color.prototype);
	},

	/*
	Property: mix
		Mixes two or more colors with the Color.
		
	Arguments:
		color - a color to mix. you can use as arguments how many colors as you want to mix with the original one.
		alpha - if you use a number as the last argument, it will be threated as the amount of the color to mix.
	*/

	mix: function(){
		var colors = $A(arguments);
		var alpha = ($type(colors[colors.length - 1]) == 'number') ? colors.pop() : 50;
		var rgb = this.copy();
		colors.each(function(color){
			color = new Color(color);
			for (var i = 0; i < 3; i++) rgb[i] = Math.round((rgb[i] / 100 * (100 - alpha)) + (color[i] / 100 * alpha));
		});
		return new Color(rgb, 'rgb');
	},

	/*
	Property: invert
		Inverts the Color.
	*/

	invert: function(){
		return new Color(this.map(function(value){
			return 255 - value;
		}));
	},

	/*
	Property: setHue
		Modifies the hue of the Color, and returns a new one.
	
	Arguments:
		value - the hue to set
	*/

	setHue: function(value){
		return new Color([value, this.hsb[1], this.hsb[2]], 'hsb');
	},

	/*
	Property: setSaturation
		Changes the saturation of the Color, and returns a new one.
	
	Arguments:
		percent - the percentage of the saturation to set
	*/

	setSaturation: function(percent){
		return new Color([this.hsb[0], percent, this.hsb[2]], 'hsb');
	},

	/*
	Property: setBrightness
		Changes the brightness of the Color, and returns a new one.
	
	Arguments:
		percent - the percentage of the brightness to set
	*/

	setBrightness: function(percent){
		return new Color([this.hsb[0], this.hsb[1], percent], 'hsb');
	}

});

/* Section: Utility Functions */

/*
Function: $RGB
	Shortcut to create a new color, based on red, green, blue values.

Arguments:
	r - (integer) red value (0-255)
	g - (integer) green value (0-255)
	b - (integer) blue value (0-255)

*/

function $RGB(r, g, b){
	return new Color([r, g, b], 'rgb');
};

/*
Function: $HSB
	Shortcut to create a new color, based on hue, saturation, brightness values.

Arguments:
	h - (integer) hue value (0-100)
	s - (integer) saturation value (0-100)
	b - (integer) brightness value (0-100)
*/

function $HSB(h, s, b){
	return new Color([h, s, b], 'hsb');
};

/*
Class: Array
	A collection of The Array Object prototype methods.
*/

Array.extend({
	
	/*
	Property: rgbToHsb
		Converts a RGB array to an HSB array.

	Returns:
		the HSB array.
	*/

	rgbToHsb: function(){
		var red = this[0], green = this[1], blue = this[2];
		var hue, saturation, brightness;
		var max = Math.max(red, green, blue), min = Math.min(red, green, blue);
		var delta = max - min;
		brightness = max / 255;
		saturation = (max != 0) ? delta / max : 0;
		if (saturation == 0){
			hue = 0;
		} else {
			var rr = (max - red) / delta;
			var gr = (max - green) / delta;
			var br = (max - blue) / delta;
			if (red == max) hue = br - gr;
			else if (green == max) hue = 2 + rr - br;
			else hue = 4 + gr - rr;
			hue /= 6;
			if (hue < 0) hue++;
		}
		return [Math.round(hue * 360), Math.round(saturation * 100), Math.round(brightness * 100)];
	},

	/*
	Property: hsbToRgb
		Converts an HSB array to an RGB array.

	Returns:
		the RGB array.
	*/

	hsbToRgb: function(){
		var br = Math.round(this[2] / 100 * 255);
		if (this[1] == 0){
			return [br, br, br];
		} else {
			var hue = this[0] % 360;
			var f = hue % 60;
			var p = Math.round((this[2] * (100 - this[1])) / 10000 * 255);
			var q = Math.round((this[2] * (6000 - this[1] * f)) / 600000 * 255);
			var t = Math.round((this[2] * (6000 - this[1] * (60 - f))) / 600000 * 255);
			switch(Math.floor(hue / 60)){
				case 0: return [br, t, p];
				case 1: return [q, br, p];
				case 2: return [p, br, t];
				case 3: return [p, q, br];
				case 4: return [t, p, br];
				case 5: return [br, p, q];
			}
		}
		return false;
	}

});

/*
Script: Scroller.js
	Contains the <Scroller>.

License:
	MIT-style license.
*/

/*
Class: Scroller
	The Scroller is a class to scroll any element with an overflow (including the window) when the mouse cursor reaches certain buondaries of that element.
	You must call its start method to start listening to mouse movements.

Note:
	The Scroller requires an XHTML doctype.

Arguments:
	element - required, the element to scroll.
	options - optional, see options below, and <Fx.Base> options.

Options:
	area - integer, the necessary boundaries to make the element scroll.
	velocity - integer, velocity ratio, the modifier for the window scrolling speed.

Events:
	onChange - optionally, when the mouse reaches some boundaries, you can choose to alter some other values, instead of the scrolling offsets.
		Automatically passes as parameters x and y values.
*/

var Scroller = new Class({

	options: {
		area: 20,
		velocity: 1,
		onChange: function(x, y){
			this.element.scrollTo(x, y);
		}
	},

	initialize: function(element, options){
		this.setOptions(options);
		this.element = $(element);
		this.mousemover = ([window, document].contains(element)) ? $(document.body) : this.element;
	},

	/*
	Property: start
		The scroller starts listening to mouse movements.
	*/

	start: function(){
		this.coord = this.getCoords.bindWithEvent(this);
		this.mousemover.addListener('mousemove', this.coord);
	},

	/*
	Property: stop
		The scroller stops listening to mouse movements.
	*/

	stop: function(){
		this.mousemover.removeListener('mousemove', this.coord);
		this.timer = $clear(this.timer);
	},

	getCoords: function(event){
		this.page = (this.element == window) ? event.client : event.page;
		if (!this.timer) this.timer = this.scroll.periodical(50, this);
	},

	scroll: function(){
		var el = this.element.getSize();
		var pos = this.element.getPosition();

		var change = {'x': 0, 'y': 0};
		for (var z in this.page){
			if (this.page[z] < (this.options.area + pos[z]) && el.scroll[z] != 0)
				change[z] = (this.page[z] - this.options.area - pos[z]) * this.options.velocity;
			else if (this.page[z] + this.options.area > (el.size[z] + pos[z]) && el.scroll[z] + el.size[z] != el.scrollSize[z])
				change[z] = (this.page[z] - el.size[z] + this.options.area - pos[z]) * this.options.velocity;
		}
		if (change.y || change.x) this.fireEvent('onChange', [el.scroll.x + change.x, el.scroll.y + change.y]);
	}

});

Scroller.implement(new Events, new Options);

/*
Script: Slider.js
	Contains <Slider>

License:
	MIT-style license.
*/

/*
Class: Slider
	Creates a slider with two elements: a knob and a container. Returns the values.
	
Note:
	The Slider requires an XHTML doctype.

Arguments:
	element - the knob container
	knob - the handle
	options - see Options below

Options:
	steps - the number of steps for your slider.
	mode - either 'horizontal' or 'vertical'. defaults to horizontal.
	offset - relative offset for knob position. default to 0.
	
Events:
	onChange - a function to fire when the value changes.
	onComplete - a function to fire when you're done dragging.
	onTick - optionally, you can alter the onTick behavior, for example displaying an effect of the knob moving to the desired position.
		Passes as parameter the new position.
*/

var Slider = new Class({

	options: {
		onChange: Class.empty,
		onComplete: Class.empty,
		onTick: function(pos){
			this.knob.setStyle(this.p, pos);
		},
		mode: 'horizontal',
		steps: 100,
		offset: 0
	},

	initialize: function(el, knob, options){
		this.element = $(el);
		this.knob = $(knob);
		this.setOptions(options);
		this.previousChange = -1;
		this.previousEnd = -1;
		this.step = -1;
		this.element.addEvent('mousedown', this.clickedElement.bindWithEvent(this));
		var mod, offset;
		switch(this.options.mode){
			case 'horizontal':
				this.z = 'x';
				this.p = 'left';
				mod = {'x': 'left', 'y': false};
				offset = 'offsetWidth';
				break;
			case 'vertical':
				this.z = 'y';
				this.p = 'top';
				mod = {'x': false, 'y': 'top'};
				offset = 'offsetHeight';
		}
		this.max = this.element[offset] - this.knob[offset] + (this.options.offset * 2);
		this.half = this.knob[offset]/2;
		this.getPos = this.element['get' + this.p.capitalize()].bind(this.element);
		this.knob.setStyle('position', 'relative').setStyle(this.p, - this.options.offset);
		var lim = {};
		lim[this.z] = [- this.options.offset, this.max - this.options.offset];
		this.drag = new Drag.Base(this.knob, {
			limit: lim,
			modifiers: mod,
			snap: 0,
			onStart: function(){
				this.draggedKnob();
			}.bind(this),
			onDrag: function(){
				this.draggedKnob();
			}.bind(this),
			onComplete: function(){
				this.draggedKnob();
				this.end();
			}.bind(this)
		});
		if (this.options.initialize) this.options.initialize.call(this);
	},

	/*
	Property: set
		The slider will get the step you pass.

	Arguments:
		step - one integer
	*/

	set: function(step){
		this.step = step.limit(0, this.options.steps);
		this.checkStep();
		this.end();
		this.fireEvent('onTick', this.toPosition(this.step));
		return this;
	},

	clickedElement: function(event){
		var position = event.page[this.z] - this.getPos() - this.half;
		position = position.limit(-this.options.offset, this.max -this.options.offset);
		this.step = this.toStep(position);
		this.checkStep();
		this.end();
		this.fireEvent('onTick', position);
	},

	draggedKnob: function(){
		this.step = this.toStep(this.drag.value.now[this.z]);
		this.checkStep();
	},

	checkStep: function(){
		if (this.previousChange != this.step){
			this.previousChange = this.step;
			this.fireEvent('onChange', this.step);
		}
	},

	end: function(){
		if (this.previousEnd !== this.step){
			this.previousEnd = this.step;
			this.fireEvent('onComplete', this.step + '');
		}
	},

	toStep: function(position){
		return Math.round((position + this.options.offset) / this.max * this.options.steps);
	},

	toPosition: function(step){
		return this.max * step / this.options.steps;
	}

});

Slider.implement(new Events);
Slider.implement(new Options);

/*
Script: SmoothScroll.js
	Contains <SmoothScroll>

License:
	MIT-style license.
*/

/*
Class: SmoothScroll
	Auto targets all the anchors in a page and display a smooth scrolling effect upon clicking them.
	Inherits methods, properties, options and events from <Fx.Scroll>.

Note:
	SmoothScroll requires an XHTML doctype.

Arguments:
	options - the Fx.Scroll options (see: <Fx.Scroll>) plus links, a collection of elements you want your smoothscroll on. Defaults to document.links.

Example:
	>new SmoothScroll();
*/

var SmoothScroll = Fx.Scroll.extend({

	initialize: function(options){
		this.parent(window, options);
		this.links = (this.options.links) ? $$(this.options.links) : $$(document.links);
		var location = window.location.href.match(/^[^#]*/)[0] + '#';
		this.links.each(function(link){
			if (link.href.indexOf(location) != 0) return;
			var anchor = link.href.substr(location.length);
			if (anchor && $(anchor)) this.useLink(link, anchor);
		}, this);
		if (!window.webkit419) this.addEvent('onComplete', function(){
			window.location.hash = this.anchor;
		});
	},

	useLink: function(link, anchor){
		link.addEvent('click', function(event){
			this.anchor = anchor;
			this.toElement(anchor);
			event.stop();
		}.bindWithEvent(this));
	}

});

/*
Script: Sortables.js
	Contains <Sortables> Class.

License:
	MIT-style license.
*/

/*
Class: Sortables
	Creates an interface for <Drag.Base> and drop, resorting of a list.

Note:
	The Sortables require an XHTML doctype.

Arguments:
	list - required, the list that will become sortable.
	options - an Object, see options below.

Options:
	handles - a collection of elements to be used for drag handles. defaults to the elements.
	
Events:
	onStart - function executed when the item starts dragging
	onComplete - function executed when the item ends dragging
*/

var Sortables = new Class({

	options: {
		handles: false,
		onStart: Class.empty,
		onComplete: Class.empty,
		ghost: true,
		snap: 3,
		onDragStart: function(element, ghost){
			ghost.setStyle('opacity', 0.7);
			element.setStyle('opacity', 0.7);
		},
		onDragComplete: function(element, ghost){
			element.setStyle('opacity', 1);
			ghost.remove();
			this.trash.remove();
		}
	},

	initialize: function(list, options){
		this.setOptions(options);
		this.list = $(list);
		this.elements = this.list.getChildren();
		this.handles = (this.options.handles) ? $$(this.options.handles) : this.elements;
		this.bound = {
			'start': [],
			'moveGhost': this.moveGhost.bindWithEvent(this)
		};
		for (var i = 0, l = this.handles.length; i < l; i++){
			this.bound.start[i] = this.start.bindWithEvent(this, this.elements[i]);
		}
		this.attach();
		if (this.options.initialize) this.options.initialize.call(this);
		this.bound.move = this.move.bindWithEvent(this);
		this.bound.end = this.end.bind(this);
	},

	attach: function(){
		this.handles.each(function(handle, i){
			handle.addEvent('mousedown', this.bound.start[i]);
		}, this);
	},

	detach: function(){
		this.handles.each(function(handle, i){
			handle.removeEvent('mousedown', this.bound.start[i]);
		}, this);
	},

	start: function(event, el){
		this.active = el;
		this.coordinates = this.list.getCoordinates();
		if (this.options.ghost){
			var position = el.getPosition();
			this.offset = event.page.y - position.y;
			this.trash = new Element('div').inject(document.body);
			this.ghost = el.clone().inject(this.trash).setStyles({
				'position': 'absolute',
				'left': position.x,
				'top': event.page.y - this.offset
			});
			document.addListener('mousemove', this.bound.moveGhost);
			this.fireEvent('onDragStart', [el, this.ghost]);
		}
		document.addListener('mousemove', this.bound.move);
		document.addListener('mouseup', this.bound.end);
		this.fireEvent('onStart', el);
		event.stop();
	},

	moveGhost: function(event){
		var value = event.page.y - this.offset;
		value = value.limit(this.coordinates.top, this.coordinates.bottom - this.ghost.offsetHeight);
		this.ghost.setStyle('top', value);
		event.stop();
	},

	move: function(event){
		var now = event.page.y;
		this.previous = this.previous || now;
		var up = ((this.previous - now) > 0);
		var prev = this.active.getPrevious();
		var next = this.active.getNext();
		if (prev && up && now < prev.getCoordinates().bottom) this.active.injectBefore(prev);
		if (next && !up && now > next.getCoordinates().top) this.active.injectAfter(next);
		this.previous = now;
	},

	serialize: function(converter){
		return this.list.getChildren().map(converter || function(el){
			return this.elements.indexOf(el);
		}, this);
	},

	end: function(){
		this.previous = null;
		document.removeListener('mousemove', this.bound.move);
		document.removeListener('mouseup', this.bound.end);
		if (this.options.ghost){
			document.removeListener('mousemove', this.bound.moveGhost);
			this.fireEvent('onDragComplete', [this.active, this.ghost]);
		}
		this.fireEvent('onComplete', this.active);
	}

});

Sortables.implement(new Events, new Options);

/*
Script: Tips.js
	Tooltips, BubbleTips, whatever they are, they will appear on mouseover

License:
	MIT-style license.

Credits:
	The idea behind Tips.js is based on Bubble Tooltips (<http://web-graphics.com/mtarchive/001717.php>) by Alessandro Fulcitiniti <http://web-graphics.com>
*/

/*
Class: Tips
	Display a tip on any element with a title and/or href.

Note:
	Tips requires an XHTML doctype.

Arguments:
	elements - a collection of elements to apply the tooltips to on mouseover.
	options - an object. See options Below.

Options:
	maxTitleChars - the maximum number of characters to display in the title of the tip. defaults to 30.
	showDelay - the delay the onShow method is called. (defaults to 100 ms)
	hideDelay - the delay the onHide method is called. (defaults to 100 ms)

	className - the prefix for your tooltip classNames. defaults to 'tool'.

		the whole tooltip will have as classname: tool-tip

		the title will have as classname: tool-title

		the text will have as classname: tool-text

	offsets - the distance of your tooltip from the mouse. an Object with x/y properties.
	fixed - if set to true, the toolTip will not follow the mouse.
	
Events:
	onShow - optionally you can alter the default onShow behaviour with this option (like displaying a fade in effect);
	onHide - optionally you can alter the default onHide behaviour with this option (like displaying a fade out effect);

Example:
	(start code)
	<img src="/images/i.png" title="The body of the tooltip is stored in the title" class="toolTipImg"/>
	<script>
		var myTips = new Tips($$('.toolTipImg'), {
			maxTitleChars: 50	//I like my captions a little long
		});
	</script>
	(end)

Note:
	The title of the element will always be used as the tooltip body. If you put :: on your title, the text before :: will become the tooltip title.
*/

var Tips = new Class({

	options: {
		onShow: function(tip){
			tip.setStyle('visibility', 'visible');
		},
		onHide: function(tip){
			tip.setStyle('visibility', 'hidden');
		},
		maxTitleChars: 30,
		showDelay: 100,
		hideDelay: 100,
		className: 'tool',
		offsets: {'x': 16, 'y': 16},
		fixed: false
	},

	initialize: function(elements, options){
		this.setOptions(options);
		this.toolTip = new Element('div', {
			'class': this.options.className + '-tip',
			'styles': {
				'position': 'absolute',
				'top': '0',
				'left': '0',
				'visibility': 'hidden'
			}
		}).inject(document.body);
		this.wrapper = new Element('div').inject(this.toolTip);
		$$(elements).each(this.build, this);
		if (this.options.initialize) this.options.initialize.call(this);
	},

	build: function(el){
		el.$tmp.myTitle = (el.href && el.getTag() == 'a') ? el.href.replace('http://', '') : (el.rel || false);
		if (el.title){
			var dual = el.title.split('::');
			if (dual.length > 1){
				el.$tmp.myTitle = dual[0].trim();
				el.$tmp.myText = dual[1].trim();
			} else {
				el.$tmp.myText = el.title;
			}
			el.removeAttribute('title');
		} else {
			el.$tmp.myText = false;
		}
		if (el.$tmp.myTitle && el.$tmp.myTitle.length > this.options.maxTitleChars) el.$tmp.myTitle = el.$tmp.myTitle.substr(0, this.options.maxTitleChars - 1) + "&hellip;";
		el.addEvent('mouseenter', function(event){
			this.start(el);
			if (!this.options.fixed) this.locate(event);
			else this.position(el);
		}.bind(this));
		if (!this.options.fixed) el.addEvent('mousemove', this.locate.bindWithEvent(this));
		var end = this.end.bind(this);
		el.addEvent('mouseleave', end);
		el.addEvent('trash', end);
	},

	start: function(el){
		this.wrapper.empty();
		if (el.$tmp.myTitle){
			this.title = new Element('span').inject(new Element('div', {'class': this.options.className + '-title'}).inject(this.wrapper)).setHTML(el.$tmp.myTitle);
		}
		if (el.$tmp.myText){
			this.text = new Element('span').inject(new Element('div', {'class': this.options.className + '-text'}).inject(this.wrapper)).setHTML(el.$tmp.myText);
		}
		$clear(this.timer);
		this.timer = this.show.delay(this.options.showDelay, this);
	},

	end: function(event){
		$clear(this.timer);
		this.timer = this.hide.delay(this.options.hideDelay, this);
	},

	position: function(element){
		var pos = element.getPosition();
		this.toolTip.setStyles({
			'left': pos.x + this.options.offsets.x,
			'top': pos.y + this.options.offsets.y
		});
	},

	locate: function(event){
		var win = {'x': window.getWidth(), 'y': window.getHeight()};
		var scroll = {'x': window.getScrollLeft(), 'y': window.getScrollTop()};
		var tip = {'x': this.toolTip.offsetWidth, 'y': this.toolTip.offsetHeight};
		var prop = {'x': 'left', 'y': 'top'};
		for (var z in prop){
			var pos = event.page[z] + this.options.offsets[z];
			if ((pos + tip[z] - scroll[z]) > win[z]) pos = event.page[z] - this.options.offsets[z] - tip[z];
			this.toolTip.setStyle(prop[z], pos);
		};
	},

	show: function(){
		if (this.options.timeout) this.timer = this.hide.delay(this.options.timeout, this);
		this.fireEvent('onShow', [this.toolTip]);
	},

	hide: function(){
		this.fireEvent('onHide', [this.toolTip]);
	}

});

Tips.implement(new Events, new Options);

/*
Script: Group.js
	For Grouping Classes or Elements Events. The Event added to the Group will fire when all of the events of the items of the group are fired.

License:
	MIT-style license.
*/

/*
Class: Group
	An "Utility" Class.

Arguments:
	List of Class instances

Example:
	(start code)
	xhr1 = new Ajax('data.js', {evalScript: true});
	xhr2 = new Ajax('abstraction.js', {evalScript: true});
	xhr3 = new Ajax('template.js', {evalScript: true});

	var group = new Group(xhr1, xhr2, xhr3);
	group.addEvent('onComplete', function(){
		alert('All Scripts loaded');
	});

	xhr1.request();
	xhr2.request();
	xhr3.request();
	(end)

*/

var Group = new Class({

	initialize: function(){
		this.instances = $A(arguments);
		this.events = {};
		this.checker = {};
	},

	/*
	Property: addEvent
		adds an event to the stack of events of the Class instances.

	Arguments:
		type - string; the event name (e.g. 'onComplete')
		fn - function to execute when all instances fired this event
	*/

	addEvent: function(type, fn){
		this.checker[type] = this.checker[type] || {};
		this.events[type] = this.events[type] || [];
		if (this.events[type].contains(fn)) return false;
		else this.events[type].push(fn);
		this.instances.each(function(instance, i){
			instance.addEvent(type, this.check.bind(this, [type, instance, i]));
		}, this);
		return this;
	},

	check: function(type, instance, i){
		this.checker[type][i] = true;
		var every = this.instances.every(function(current, j){
			return this.checker[type][j] || false;
		}, this);
		if (!every) return;
		this.checker[type] = {};
		this.events[type].each(function(event){
			event.call(this, this.instances, instance);
		}, this);
	}

});

/*
Script: Accordion.js
	Contains <Accordion>

License:
	MIT-style license.
*/

/*
Class: Accordion
	The Accordion class creates a group of elements that are toggled when their handles are clicked. When one elements toggles in, the others toggles back.
	Inherits methods, properties, options and events from <Fx.Elements>.
	
Note:
	The Accordion requires an XHTML doctype.

Arguments:
	togglers - required, a collection of elements, the elements handlers that will be clickable.
	elements - required, a collection of elements the transitions will be applied to.
	options - optional, see options below, and <Fx.Base> options and events.

Options:
	show - integer, the Index of the element to show at start.
	display - integer, the Index of the element to show at start (with a transition). defaults to 0.
	fixedHeight - integer, if you want the elements to have a fixed height. defaults to false.
	fixedWidth - integer, if you want the elements to have a fixed width. defaults to false.
	height - boolean, will add a height transition to the accordion if true. defaults to true.
	opacity - boolean, will add an opacity transition to the accordion if true. defaults to true.
	width - boolean, will add a width transition to the accordion if true. defaults to false, css mastery is required to make this work!
	alwaysHide - boolean, will allow to hide all elements if true, instead of always keeping one element shown. defaults to false.
	
Events:
	onActive - function to execute when an element starts to show
	onBackground - function to execute when an element starts to hide
*/

var Accordion = Fx.Elements.extend({

	options: {
		onActive: Class.empty,
		onBackground: Class.empty,
		display: 0,
		show: false,
		height: true,
		width: false,
		opacity: true,
		fixedHeight: false,
		fixedWidth: false,
		wait: false,
		alwaysHide: false
	},

	initialize: function(){
		var options, togglers, elements, container;
		$each(arguments, function(argument, i){
			switch($type(argument)){
				case 'object': options = argument; break;
				case 'element': container = $(argument); break;
				default:
					var temp = $$(argument);
					if (!togglers) togglers = temp;
					else elements = temp;
			}
		});
		this.togglers = togglers || [];
		this.elements = elements || [];
		this.container = $(container);
		this.setOptions(options);
		this.previous = -1;
		if (this.options.alwaysHide) this.options.wait = true;
		if ($chk(this.options.show)){
			this.options.display = false;
			this.previous = this.options.show;
		}
		if (this.options.start){
			this.options.display = false;
			this.options.show = false;
		}
		this.effects = {};
		if (this.options.opacity) this.effects.opacity = 'fullOpacity';
		if (this.options.width) this.effects.width = this.options.fixedWidth ? 'fullWidth' : 'offsetWidth';
		if (this.options.height) this.effects.height = this.options.fixedHeight ? 'fullHeight' : 'scrollHeight';
		for (var i = 0, l = this.togglers.length; i < l; i++) this.addSection(this.togglers[i], this.elements[i]);
		this.elements.each(function(el, i){
			if (this.options.show === i){
				this.fireEvent('onActive', [this.togglers[i], el]);
			} else {
				for (var fx in this.effects) el.setStyle(fx, 0);
			}
		}, this);
		this.parent(this.elements);
		if ($chk(this.options.display)) this.display(this.options.display);
	},

	/*
	Property: addSection
		Dynamically adds a new section into the accordion at the specified position.

	Arguments:
		toggler - (dom element) the element that toggles the accordion section open.
		element - (dom element) the element that stretches open when the toggler is clicked.
		pos - (integer) the index where these objects are to be inserted within the accordion.
	*/

	addSection: function(toggler, element, pos){
		toggler = $(toggler);
		element = $(element);
		var test = this.togglers.contains(toggler);
		var len = this.togglers.length;
		this.togglers.include(toggler);
		this.elements.include(element);
		if (len && (!test || pos)){
			pos = $pick(pos, len - 1);
			toggler.injectBefore(this.togglers[pos]);
			element.injectAfter(toggler);
		} else if (this.container && !test){
			toggler.inject(this.container);
			element.inject(this.container);
		}
		var idx = this.togglers.indexOf(toggler);
		toggler.addEvent('click', this.display.bind(this, idx));
		if (this.options.height) element.setStyles({'padding-top': 0, 'border-top': 'none', 'padding-bottom': 0, 'border-bottom': 'none'});
		if (this.options.width) element.setStyles({'padding-left': 0, 'border-left': 'none', 'padding-right': 0, 'border-right': 'none'});
		element.fullOpacity = 1;
		if (this.options.fixedWidth) element.fullWidth = this.options.fixedWidth;
		if (this.options.fixedHeight) element.fullHeight = this.options.fixedHeight;
		element.setStyle('overflow', 'hidden');
		if (!test){
			for (var fx in this.effects) element.setStyle(fx, 0);
		}
		return this;
	},

	/*
	Property: display
		Shows a specific section and hides all others. Useful when triggering an accordion from outside.

	Arguments:
		index - integer, the index of the item to show, or the actual element to show.
	*/

	display: function(index){
		index = ($type(index) == 'element') ? this.elements.indexOf(index) : index;
		if ((this.timer && this.options.wait) || (index === this.previous && !this.options.alwaysHide)) return this;
		this.previous = index;
		var obj = {};
		this.elements.each(function(el, i){
			obj[i] = {};
			var hide = (i != index) || (this.options.alwaysHide && (el.offsetHeight > 0));
			this.fireEvent(hide ? 'onBackground' : 'onActive', [this.togglers[i], el]);
			for (var fx in this.effects) obj[i][fx] = hide ? 0 : el[this.effects[fx]];
		}, this);
		return this.start(obj);
	},

	showThisHideOpen: function(index){return this.display(index);}

});

Fx.Accordion = Accordion;