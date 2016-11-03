@version = "1.0.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '8.0'
  spec.name         = 'Octopush'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'http://git.sdos.es/ios/Octopush'
  spec.summary      = 'Librería de Octopush para el envío de notificaciones push'
  spec.source       = { :git => "http://git.sdos.es/ios/Octopush.git", :tag => "v#{spec.version}" }
  spec.requires_arc = true
  spec.framework    = ['Security', 'UIKit', 'AudioToolbox', 'SystemConfiguration', 'Foundation', 'CoreGraphics']
  spec.weak_frameworks    = ['CoreLocation']
  spec.subspec 'Octopush' do |s1|
      s1.source_files = 'src/Octopush/{*.m,*.h}'
      s1.public_header_files = 'src/Octopush/Octopush.h'
      s1.subspec 'resources' do |s2|
          s2.source_files = 'src/Octopush/resources/{*.m,*.h}'
          s2.private_header_files = 'src/Octopush/resources/*.h'
          s2.subspec 'Base' do |s3|
              s3.source_files = 'src/Octopush/resources/Base/{*.m,*.h}'
              s3.private_header_files = 'src/Octopush/resources/Base/*.h'
          end
          s2.subspec 'Controllers' do |s3|
            s3.subspec 'OctopushPreferencesController' do |s4|
                s4.source_files = 'src/Octopush/resources/Controllers/OctopushPreferencesController/{*.m,*.h}'
                s4.public_header_files = 'src/Octopush/resources/Controllers/OctopushPreferencesController/OctopushSegmentsController.h'
            end
            s3.subspec 'OctopushTipifiedDataPreferenceController' do |s4|
                s4.source_files = 'src/Octopush/resources/Controllers/OctopushTipifiedDataPreferenceController/{*.m,*.h}'
                s4.private_header_files = 'src/Octopush/resources/Controllers/OctopushTipifiedDataPreferenceController/*.h'
            end
          end
          s2.subspec 'lib' do |s3|
              s3.source_files = 'src/Octopush/resources/lib/{*.m,*.h}'
              s3.private_header_files = 'src/Octopush/resources/lib/*.h'
              s3.subspec 'OpenUDID' do |s4|
                  s4.source_files = 'src/Octopush/resources/lib/OpenUDID/{*.m,*.h}'
                  s4.private_header_files = 'src/Octopush/resources/lib/OpenUDID/*.h'
              end
              s3.subspec 'Reachability' do |s4|
                  s4.source_files = 'src/Octopush/resources/lib/Reachability/{*.m,*.h}'
                  s4.private_header_files = 'src/Octopush/resources/lib/Reachability/*.h'
              end
              s3.subspec 'TLTagsContol' do |s4|
                  s4.source_files = 'src/Octopush/resources/lib/TLTagsContol/{*.m,*.h}'
                  s4.private_header_files = 'src/Octopush/resources/lib/TLTagsContol/*.h'
              end
          end
          s2.subspec 'UI' do |s3|
              s3.source_files = 'src/Octopush/resources/UI/{*.m,*.h}'
              s3.private_header_files = 'src/Octopush/resources/UI/*.h'
              s3.subspec 'OctopushDatePickerCell' do |s4|
                  s4.source_files = 'src/Octopush/resources/UI/OctopushDatePickerCell/{*.m,*.h}'
                  s4.private_header_files = 'src/Octopush/resources/UI/OctopushDatePickerCell/*.h'
              end
              s3.subspec 'OctopushLoadingView' do |s4|
                  s4.source_files = 'src/Octopush/resources/UI/OctopushLoadingView/{*.m,*.h}'
                  s4.private_header_files = 'src/Octopush/resources/UI/OctopushLoadingView/*.h'
              end
              s3.subspec 'OctopushTagsCell' do |s4|
                s4.source_files = 'src/Octopush/resources/UI/OctopushTagsCell/{*.m,*.h}'
                s4.private_header_files = 'src/Octopush/resources/UI/OctopushTagsCell/*.h'
              end
          end
          s2.subspec 'Util' do |s3|
              s3.source_files = 'src/Octopush/resources/Util/{*.m,*.h}'
              s3.private_header_files = 'src/Octopush/resources/Util/*.h'
          end
          s2.subspec 'VO' do |s3|
              s3.source_files = 'src/Octopush/resources/VO/{*.m,*.h}'
              s3.public_header_files = ['src/Octopush/resources/VO/OctopushFiltroRich.h', 'src/Octopush/resources/VO/OctopushContenidoMensajeRich.h', 'src/Octopush/resources/VO/OctopushMensajeRich.h', 'src/Octopush/resources/VO/OctopushNotification.h']
              s3.subspec 'Segments' do |s4|
                  s4.source_files = 'src/Octopush/resources/VO/Segments/{*.m,*.h}'
                  s4.public_header_files = ['src/Octopush/resources/VO/Segments/OctopushSegment.h', 'src/Octopush/resources/VO/Segments/OctopushSegmentOption.h']
              end
          end
          s2.subspec 'WS' do |s3|
              s3.source_files = 'src/Octopush/resources/WS/{*.m,*.h}'
              s3.private_header_files = 'src/Octopush/resources/WS/*.h'
          end
      end
  end
  spec.resource_bundles = {
     'OctopushBundle' => ['src/Octopush/**/*.xib', 'src/Octopush/**/*.strings']
 }
end
