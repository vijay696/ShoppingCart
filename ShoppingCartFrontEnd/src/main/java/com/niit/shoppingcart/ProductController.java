package com.niit.shoppingcart;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.Product;
import com.niit.shopingcart.model.Supplier;
import com.niit.util.Util;


@Controller
public class ProductController {

	@Autowired(required=true)
	private ProductDAO productDAO;

	@Autowired(required = true)
	private CategoryDAO categoryDAO;

	@Autowired(required = true)
	private SupplierDAO supplierDAO;
	private Path path;

	/*
	 * @Autowired(required=true)
	 * 
	 * @Qualifier(value="productDAO") public void setProductDAO(ProductDAO ps){
	 * this.productDAO = ps; }
	 */

	@RequestMapping(value = "/manageProduct", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("Supplier", new Supplier());
		model.addAttribute("Category", new Category());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		
		return "ProductPage";
	}

	// For add and update product both
	@RequestMapping(value = "/manageProduct/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product,Model model,HttpServletRequest request) {

		
		Category category = categoryDAO.getByName(product.getCategory().getName());
		categoryDAO.saveOrUpdate(category);

		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		supplierDAO.saveOrUpdate(supplier);
		model.addAttribute("Supplier", new Supplier());
		model.addAttribute("Category", new Category());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());

				
		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		product.setCategory(category);
		product.setSupplier(supplier);
		
		String newID=Util.removeComma(product.getId());
		product.setId(newID);
			

		productDAO.saveOrUpdate(product);
		   MultipartFile itemImage = product.getItemImage();
	       String rootDirectory = request.getSession().getServletContext().getRealPath("/");
path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getId()+".png");
//  path = Paths.get("E:\\workspace2\\ShoppingCartFrontEnd\\src\\main\\webapp\\WEB-INF\\resources\\images"+product.getId()+".png");
	        


	        if (itemImage != null && !itemImage.isEmpty()) {
	            try {
	            itemImage.transferTo(new File(path.toString()));
	            } catch (Exception e) {
	                e.printStackTrace();
	                throw new RuntimeException("item image saving failed.", e);
	            }
	        }


	return "redirect:/manageProduct";

}
	@RequestMapping("manageProduct/remove/{id}")
	public String removeProduct(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/manageProduct";
/*
		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		
		
		path = Paths.get("D:\\DT softwares\\New folder\\WORKSPACE\\ShoppingCartFrontEnd\\src\\main\\webapp\\WEB-IN\\resources\\images\\" + id + ".png");
		
		if (Files.exists(path)) {
            try {
                Files.delete(path);
                System.out.println("Image successfully deleted");
            } catch (IOException e) {
            	  System.out.println("Error in Image deletion");
                e.printStackTrace();
            }
        }
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/manageProduct";
*/		
	
	}

	@RequestMapping("manageProduct/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		System.out.println("editProduct");
		model.addAttribute("Supplier", new Supplier());
		model.addAttribute("Category", new Category());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		
		model.addAttribute("product", this.productDAO.get(id));
		model.addAttribute("listProducts", this.productDAO.list());
		
		return "ProductPage";

	}

	@RequestMapping("product/get/{id}")
	public String getSelectedProduct(@PathVariable("id") String id, Model model,RedirectAttributes redirectattributes) {
		System.out.println("getSelectedProduct");
		/*model.addAttribute("selectedProduct", this.productDAO.get(id));*/
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("productList", this.productDAO.list());
		redirectattributes.addFlashAttribute("selectedProduct", this.productDAO.get(id));
	
		return "redirect:/";
	
	}

	
	
}
