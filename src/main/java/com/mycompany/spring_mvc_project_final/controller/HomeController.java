/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.service.CategoryProImpl;
import com.mycompany.spring_mvc_project_final.service.ImageServiceImpl;
import com.mycompany.spring_mvc_project_final.service.ProductServiceImpl;
import com.mycompany.spring_mvc_project_final.utils.SecurityUtils;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class HomeController {

    @Autowired
    private ProductServiceImpl productService;

    @Autowired
    private CategoryProImpl categoryService;
    
    @Autowired
    private ImageServiceImpl imageService;

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String welcomePage(Model model) {
        model.addAttribute("title", "Welcome");
        model.addAttribute("message", "This is welcome page!");
        model.addAttribute("categories", categoryService.getCategories());
        model.addAttribute("images", imageService.getImages().get(0));
        List<String> roles = SecurityUtils.getRolesOfUser();
        if (!CollectionUtils.isEmpty(roles) && (roles.contains("ROLE_ADMIN")
                || roles.contains("ROLE_SELLER") || roles.contains("ROLE_MANAGER"))) {
            return "redirect:/admin/home";
        }
        return "home2";
    }

    @RequestMapping("/login")
    public String loginPage(Model model, @RequestParam(value = "error", required = false) boolean error) {
        if (error) {
            model.addAttribute("message", "Login Fail!!!");
        }
       model.addAttribute("categories", categoryService.getCategories());
        return "login";
    }

    @RequestMapping("/403")
    public String accessDenied(Model model) {
        model.addAttribute("categories", categoryService.getCategories());
        return "403";
    }
    
    
    @RequestMapping("/addUser")
    public String createUser(Model model) {
        model.addAttribute("categories", categoryService.getCategories());
        return "redirect:/home";
    }


    @RequestMapping("/cart")
    public String myCart(Model model) {
        model.addAttribute("categories", categoryService.getCategories());
        model.addAttribute("images", imageService.getImages().get(0));
        return "cart";
    }

    @RequestMapping("/checkout")
    public String Checkout(Model model) {
        model.addAttribute("categories", categoryService.getCategories());
        return "checkout";
    }

    @RequestMapping("/finishCart")
    public String FinishCart(Model model) {
        model.addAttribute("categories", categoryService.getCategories());
        return "finishCart";
    }

    @RequestMapping("/listCategory")
    public String ListCategory(Model model) {
        model.addAttribute("categories", categoryService.getCategories());
        return "listCategory";
    }

    @RequestMapping("/listProduct")
    public String ListAllProduct(Model model) {
        model.addAttribute("categories", categoryService.getCategories());
        model.addAttribute("products", productService.getProducts());
        model.addAttribute("images", imageService.getImages().get(0));
        return "listProduct";
    }

    @RequestMapping("/listProduct/{nameCategory}")
    public String ListByCategory(Model model,
            @PathVariable("nameCategory") String name) {
        model.addAttribute("categories", categoryService.getCategories());
        model.addAttribute("products", productService.findListProductByCategory(name));
        model.addAttribute("images", imageService.getImages().get(0));
        return "listProduct";
    }

    @RequestMapping("/searchProduct")
    public String searchProduct(Model model) {
        model.addAttribute("categories", categoryService.getCategories());
        
        model.addAttribute("images", imageService.getImages().get(0));
        return "listProduct";
    }

    @RequestMapping("/newProduct")
    public String listNewProduct(Model model) {
        model.addAttribute("categories", categoryService.getCategories());
        model.addAttribute("images", imageService.getImages().get(0));
        return "listProduct";
    }

    @RequestMapping("/productDetail/{idProduct}/{nameCategory}")
    public String ProductDetail(Model model, @PathVariable("idProduct") int id,
            @PathVariable("nameCategory") String name) {
        model.addAttribute("productDetail", productService.findProductById(id));
        model.addAttribute("images", imageService.getImages());
        model.addAttribute("categories", categoryService.getCategories());
        model.addAttribute("products", productService.findListProductByCategory(name));
        return "productDetail";
    }

        public List<String> uploadFile(HttpServletRequest request, @RequestParam("file") MultipartFile[] files) {
        List<String> fileList = new ArrayList<>();
        if (files != null && files.length > 0) {

            for (int i = 0; i < files.length; i++) {
                MultipartFile file = files[i];
                try {
                    byte[] bytes = file.getBytes();

                    ServletContext context = request.getServletContext();
                    String pathUrl = context.getRealPath("/img");

                    int index = pathUrl.indexOf("target");
                    String pathFolder = pathUrl.substring(0, index) + "src\\main\\webapp\\resources\\img\\";
                    Path path = Paths.get(pathFolder + file.getOriginalFilename());
                    Files.write(path, bytes);

                    // sau khi upload file xong lấy file name ra để insert vào database
                    String name = file.getOriginalFilename();
                    fileList.add(name);
                } catch (Exception e) {
                    System.out.println(e);
                }
            }

        }
        return fileList;

    }
}
