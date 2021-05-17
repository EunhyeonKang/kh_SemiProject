package free.model.vo;

import java.util.ArrayList;

public class FreeViewData {
	private Free f;
	private ArrayList<FreeComment> list;

	public FreeViewData() {
		super();
	}

	public FreeViewData(Free f, ArrayList<FreeComment> list) {
		super();
		this.f = f;
		this.list = list;
	}

	public Free getF() {
		return f;
	}

	public void setF(Free f) {
		this.f = f;
	}

	public ArrayList<FreeComment> getList() {
		return list;
	}

	public void setList(ArrayList<FreeComment> list) {
		this.list = list;
	}

}