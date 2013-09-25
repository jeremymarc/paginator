module Paginator
    class Pager
        include Enumerable

        def initialize(collection, per_page = 2)
            raise "Invalid per_page" unless per_page.integer? and per_page > 0
            @collection = collection
            @per_page = per_page.to_i
        end

        def first
            page 1
        end

        def last
            page total_pages
        end

        def total_pages
            (@collection.length / @per_page).ceil
        end

        def page(number)
            if number < 0 || number > (@collection.length / @per_page).round
                raise "Invalid page number"
            end

            p = (number-1) * @per_page
            return @collection.slice(p, @per_page)
        end
    end
end
