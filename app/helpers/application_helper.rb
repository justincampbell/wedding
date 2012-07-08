module ApplicationHelper
  def registry_link(id, name, &block)
    urls = {
      bed_bath_and_beyond: "http://www.bedbathandbeyond.com/regGiftRegistry.asp?wrn=%2D347647309",
      crate_and_barrel: "http://www.crateandbarrel.com/Gift-Registry/Guest/View-Registry.aspx?grid=4893046"
    }

    link_to urls[id], title: name, target: :_blank, &block
  end
end
