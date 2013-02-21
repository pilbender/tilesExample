package net.raescott.tilesexample;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Richard Scott Smith <scott@thescene.com>
 */
@Controller
@RequestMapping(value = "/", method = RequestMethod.GET)
public class MainController {

	@RequestMapping(method = RequestMethod.GET)
	public String get1() {
		return "index";
	}

	@RequestMapping(value = "indexController", method = RequestMethod.GET)
	public String get2() {
		return "index";
	}

	@RequestMapping(value = "mainController", method = RequestMethod.GET)
	public String get3() {
		return "main";
	}

	@RequestMapping(value = "footerController", method = RequestMethod.GET)
	public String get4(Model model) {
		model.addAttribute("name", "Scott Smith");
		return "footer";
	}
}
