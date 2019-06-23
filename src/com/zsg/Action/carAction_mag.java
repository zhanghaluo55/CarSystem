package com.zsg.Action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zsg.bean.Car;
import com.zsg.bean.PageBean;
import com.zsg.factory.DaoFactory;
import com.zsg.utils.PageUtils;

public class carAction_mag extends ActionSupport{
	private Car car;
	private String cid;
	private String type;
	private String keyword;
	private String price1;
	private String price2;
    private String price;
    private String quantity;
    private String salesVolume;
    private int page;

    public static final String UPDATE="update";

    public Car getCar() {
		return car;
	}
	public void setCar(Car car) {
		this.car = car;
	}
	
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getPrice1() {
		return price1;
	}
	public void setPrice1(String price1) {
		this.price1 = price1;
	}
	
	public String getPrice2() {
		return price2;
	}
	public void setPrice2(String price2) {
		this.price2 = price2;
	}
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getSalesVolume() {
		return salesVolume;
	}
	public void setSalesVolume(String salesVolume) {
		this.salesVolume = salesVolume;
	}


    public String  addCar() throws Exception{
    	List<Car> list=DaoFactory.getCarDaoInstance().findAll();
    	int flag;
    	flag=0;
    	System.out.println(car.getCname());
    	for(Iterator iter=list.iterator();iter.hasNext();) {
    		Car car1=(Car)iter.next();
    		if(car.getCname().equals(car1.getCname())) {
    			flag=1;
    		}
    	}
    	if(flag==1) {
    		ServletActionContext.getRequest().setAttribute("addCarError", "该车已存在！");
    		System.out.println("添加失败");
    		return ERROR;
    	}else {
    		DaoFactory.getCarDaoInstance().save(car);
    		System.out.println(car.getCid());
    		ServletActionContext.getRequest().setAttribute("cid", car.getCid());
    		System.out.println("添加成功！");;
    		return SUCCESS;
    	}
    }
	
   @Override
    public String execute() throws Exception {
    	System.out.println(cid);
    	ServletActionContext.getRequest().setAttribute("cid", cid);
    	return UPDATE;
    }

	public String searchCar() throws Exception{
		
		System.out.println(type+","+keyword+","+price1+","+price2);
		List<Car> carList=new ArrayList<Car>();
/*		if(keyword!=null) {
			carList=DaoFactory.getCarDaoInstance().findKeyWord(type, keyword);
			ServletActionContext.getRequest().setAttribute("Car", carList);
		}else if((keyword==null)&&(price1!=null)){
				System.out.println("price1="+price+",price2="+price2);
				carList=DaoFactory.getCarDaoInstance().findByPrice(type, price1, price2);
				ServletActionContext.getRequest().setAttribute("Car", carList);
			
		}else if((keyword==null)&&(price1==null)){
				carList=DaoFactory.getCarDaoInstance().findAll();
				ServletActionContext.getRequest().setAttribute("Car", carList);
		}*/
		if(type.equals("price")) {
			System.out.println("price1="+price1+",price2="+price2);
			carList=DaoFactory.getCarDao_magInstance().findByPrice(type, price1, price2);
			ServletActionContext.getRequest().setAttribute("Car", carList);
		}else {
			if(keyword!=null) {
				carList=DaoFactory.getCarDao_magInstance().findKeyWord(type, keyword);
				ServletActionContext.getRequest().setAttribute("Car", carList);
			}else {
				carList=DaoFactory.getCarDaoInstance().findAll();
				ServletActionContext.getRequest().getSession().setAttribute("Car", carList);
			}
		}
		return SUCCESS;
	}
	public String carDetail() throws Exception{
		int id=Integer.parseInt(cid);
		Car car=DaoFactory.getCarDaoInstance().findById(id);
		
		return SUCCESS;
	}
	
	public String updateCar() throws Exception{
		
		int id=Integer.parseInt(cid);
		int r=0;
		System.out.println("改成车名="+car.getCname());
		r=DaoFactory.getCarDao_magInstance().updateCar(id, car);
		if(r>0) {
			System.out.println("修改成功！");
			return SUCCESS;
		}else {
			System.out.println("修改失败！");
			return ERROR;
		}
	}


   
    public String deleteCar() throws Exception{
    	System.out.println(cid);
    	int r=0;
    	int a=Integer.parseInt(cid);
    	r=DaoFactory.getCarDao_magInstance().deleteCar(a);
    	if(r>0) {
    		System.out.println("删除成功！");
    		return SUCCESS;
    	}else {
    		System.out.println("删除失败！");
    		return ERROR;
    	}
    }
    

    private File myFile;
 
    public File getMyFile() {
        return myFile;
    }
    public void setMyFile(File myFile) {
        this.myFile = myFile;
    }
 
    private String myFileContentType;
 
    private String myFileFileName;
 
    private String destPath;
 
	public String addPicture() throws Exception{
		System.out.println(cid);
		ServletActionContext.getRequest().setAttribute("cid", cid);
		return SUCCESS;
	}
    
    public String execute2(){
    	
    	System.out.println("汽车ID="+cid);
         /* Copy file to a safe location */
        destPath = "E:\\eclipse\\CarSystem\\WebContent\\carImage\\";
        System.out.println(destPath);
        try{
            System.out.println("Src File name: " + myFile);
            System.out.println("Dst File name: " + myFileFileName);
            File destFile  = new File(destPath, myFileFileName);
            FileUtils.copyFile(myFile, destFile);
        }catch(IOException e){
            e.printStackTrace();
            return ERROR;
        }
        
        int id=Integer.parseInt(cid);
        
        Car car2=new Car();
        car2=DaoFactory.getCarDaoInstance().findById(id);
        car2.setPicturePath(myFileFileName);
        int r=0;
        r=DaoFactory.getCarDao_magInstance().updateCar(id, car2);
        return SUCCESS;
    }
 
 
    public String getMyFileContentType() {
        return myFileContentType;
    }
    public void setMyFileContentType(String myFileContentType) {
        this.myFileContentType = myFileContentType;
    }
    public String getMyFileFileName() {
        return myFileFileName;
    }
    public void setMyFileFileName(String myFileFileName) {
        this.myFileFileName = myFileFileName;
    }
    
    public String pagelist() throws Exception{
    	System.out.println("page="+page);
    	PageBean pageBean=PageUtils.getPageBean(9, page, "from Car");
    	ServletActionContext.getRequest().getSession().setAttribute("pageBean", pageBean);
    	return "pagelist";
    }
    
}
