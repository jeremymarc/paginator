require 'paginator'

describe Paginator do
    let (:pages) { Paginator::Pager.new([1,2,3,4,5,6,7,8,9,10], 2) }

    it "must be able to tell how many pages" do
        pages.total_pages.should eq(5)
    end

    it "must be able to retrieve the first page" do
        pages.page(1).length.should eq(2)
        pages.page(1).should include(1,2)
        pages.first.should include(1,2)
    end

    it "must be able to retrieve the last page" do
        pages.page(5).length.should eq(2)
        pages.page(5).should include(9,10)
        pages.last.should include(9,10)
    end

    it "must raise a per_page exception if per_page is not an integer" do
        expect {Paginator::Pager.new([1,2,3], 1.5)}.to raise_error("Invalid per_page")
    end

    it "must raise an exception if page is too big" do
        expect {pages.page(100)}.to raise_error("Invalid page number")
    end

    it "must raise an exception if page is too low" do
        expect {pages.page(-1)}.to raise_error("Invalid page number")
    end
end
