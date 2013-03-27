module ApplicationHelper

  def show_flash_fields
    html = ""
    if flash[:notice]
      html << "<div class ='notice'>#{flash[:notice]}</div>"
    end

    if flash[:error]
      html << "<div class ='error'>#{flash[:error]}</div>"

    end

    if flash[:alert]
      html << "<div class ='alert'>#{flash[:alert]}</div>"
    end

    return raw(html)
  end

end
