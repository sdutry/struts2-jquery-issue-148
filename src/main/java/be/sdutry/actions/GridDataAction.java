package be.sdutry.actions;

import be.sdutry.model.Order;

import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;

import lombok.Getter;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

@ParentPackage("json-default")
@Result(type="json")
public class GridDataAction extends ActionSupport {
    @Getter
    private boolean errors = false;
    @Getter
    private List<Order> orders;

    @Override
    public String execute() {
        fillOrders();

        return SUCCESS;
    }

    private void fillOrders() {
        orders = new ArrayList<>();
	Order order1 = new Order();
	order1.setId(1L);
	order1.setName("order1");
	orders.add(order1);
	Order order2 = new Order();
	order2.setId(2L);
	order2.setName("order2");
	orders.add(order2);
    }
}
