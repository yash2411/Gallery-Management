module ApplicationHelper
    def check_title(page_title='')
        base_title= 'Gallery'
        if page_title.empty?
            base_title
        else
            page_title+" | "+base_title
        end
    end
end
