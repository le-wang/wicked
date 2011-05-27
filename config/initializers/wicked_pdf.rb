wkhtmltopdf_exe_path = Rails.env.production? ? Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s : "/usr/local/bin/wkhtmltopdf"

WickedPdf.config = {
  :wkhtmltopdf => wkhtmltopdf_exe_path,
  :layout => "pdf.html",
  :page_size => "Letter",
  :dpi => 100,
  :zoom => 1.35,
  :use_xserver => true,
  :no_background => true,
  :print_media_type => true,
  :disable_smart_shrinking => false
}
