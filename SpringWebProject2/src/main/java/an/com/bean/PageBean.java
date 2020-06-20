package an.com.bean;

public class PageBean {
	
	private int currentPage;
	private int totalPage;
	private int totalRow;
	private int currentBlock;
	private int startPage;
	private int endPage;
	
	public PageBean() {
		super();
	}

	public PageBean(int currentPage, int totalPage, int totalRow, int currentBlock, int startPage, int endPage) {
		super();
		this.currentPage = currentPage;
		this.totalPage = totalPage;
		this.totalRow = totalRow;
		this.currentBlock = currentBlock;
		this.startPage = startPage;
		this.endPage = endPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalRow() {
		return totalRow;
	}

	public void setTotalRow(int totalRow) {
		this.totalRow = totalRow;
	}

	public int getCurrentBlock() {
		return currentBlock;
	}

	public void setCurrentBlock(int currentBlock) {
		this.currentBlock = currentBlock;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	@Override
	public String toString() {
		return "PageBean [currentPage=" + currentPage + ", totalPage=" + totalPage + ", totalRow=" + totalRow
				+ ", currentBlock=" + currentBlock + ", startPage=" + startPage + ", endPage=" + endPage + "]";
	}
	
	
	
}
