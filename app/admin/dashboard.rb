ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "Recent Stories" do
          ul do
            Story.limit(5).all.map do |story|
              li link_to(story.title, admin_story_path(story))
            end
          end
					para link_to('All stories...', admin_stories_path)
        end
      end
      column do
        panel "Recent Recordings" do
          ul do
            Recording.limit(5).all.map do |recording|
              li link_to(recording.title, admin_recording_path(recording))
            end
          end
					para link_to('All recordings...', admin_recordings_path)
        end
      end
      column do
        panel "Recent Videos" do
          ul do
            Video.limit(5).all.map do |video|
              li link_to(video.title, admin_video_path(video))
            end
          end
					para link_to('All videos...', admin_videos_path)
        end
      end
      column do
        panel "Recent Guests" do
          ul do
            Guest.limit(5).all.map do |guest|
              li link_to(guest.name, admin_guest_path(guest))
            end
          end
					para link_to('All guests...', admin_guests_path)
        end
      end
      column do
        panel "Recent Photos" do
          ul do
            Photo.limit(5).all.map do |photo|
              li link_to(photo.description, admin_photo_path(photo))
            end
          end
					para link_to('All photos...', admin_photos_path)
        end
      end

    end
  end # content
end
