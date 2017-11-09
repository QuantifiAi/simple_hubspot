module SimpleHubspot
  class File

    class << self

      def upload(file, folder_paths = nil)
        ApiClient.do_file_upload "/filemanager/api/v2/files", file, folder_paths
      end

    end
  end
end