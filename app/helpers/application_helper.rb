module ApplicationHelper
	  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Viva"
    if page_title.empty?
      base_title + ", invitaciones y fotografía"
    else
      page_title + " | " + base_title
    end
  end
end
