# Add a callback - to be executed before each request in development,
# and at startup in production - to patch existing app classes.
# Doing so in init/environment.rb wouldn't work in development, since
# classes are reloaded, but initialization is not run each time.
# See http://stackoverflow.com/questions/7072758/plugin-not-reloading-in-development-mode
#
Rails.configuration.to_prepare do
# Define which state each authority belongs in
      PublicBody.class_eval do
      # ACT (only has state, no councils)
          def actstate?
            return self.has_tag?('ACT_state')
          end
      # NSW
          # NSW State
          def nswstate?
            return self.has_tag?('NSW_state')
          end
          # NSW Council
          def nswcouncil?
            return self.has_tag?('NSW_council')
          end
      # NT
          #NT State
          def ntstate?
            return self.has_tag?('NT_state')
          end
          # NT Council
          def ntcouncil?
            return self.has_tag?('NT_council')
          end
      #QLD
          # QLD State
          def qldstate?
            return self.has_tag?('QLD_state')
          end
          # QLD Council
          def qldcouncil?
            return self.has_tag?('QLD_council')
          end
      #SA
          # SA State
          def sastate?
            return self.has_tag?('SA_state')
          end
          # SA Council
          def sacouncil?
            return self.has_tag?('SA_council')
          end
      #TAS
          # TAS State
          def tasstate?
            return self.has_tag?('TAS_state')
          end
          # TAS Council
          def tascouncil?
            return self.has_tag?('TAS_council')
          end
      #VIC
          # VIC State
          def vicstate?
            return self.has_tag?('VIC_state')
          end
          # VIC Council
          def viccouncil?
            return self.has_tag?('VIC_council')
          end
      #WA
          # WA State
          def wastate?
            return self.has_tag?('WA_state')
          end
          # WA Council
          def wacouncil?
            return self.has_tag?('WA_council')
          end
      # Federal
      # This is a backup in case the law changes, we can easily modify it here
          def federalbody?
            return self.has_tag?('federal')
          end
      end
end
