package net.raescott.tilesexample;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Richard Scott Smith <scott@thescene.com>
 */
@Controller
@RequestMapping(value = "/", method = RequestMethod.GET)
public class MainController {

	public String get1() {
		return "index";
	}

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String get2() {
		return "main";
	}
}
