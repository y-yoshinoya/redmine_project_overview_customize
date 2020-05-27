require_dependency "project"

module ProjectOverviewCustomize
  module ProjectPatch
    extend ActiveSupport::Concern
    included do
      unloadable
      safe_attributes :hide_members
    end
  end
end

ActiveSupport::Reloader.to_prepare do
  unless Project.included_modules.include?(ProjectOverviewCustomize::ProjectPatch)
    Project.send(:include, ProjectOverviewCustomize::ProjectPatch)
  end
end
