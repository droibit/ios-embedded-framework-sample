platform :ios, '11.0'

# ref. https://guides.cocoapods.org/using/the-podfile.html
abstract_target 'App' do
  use_frameworks!

  pod 'Firebase/Analytics', '7.6.0'

  target 'EmbeddedFW-Sample' do
    pod 'PKHUD', '5.3'

    target 'EmbeddedFW-SampleTests' do
      inherit! :search_paths
    end
  end

  target 'Core' do
    target 'CoreTests' do
      inherit! :search_paths
    end
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 9.0
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
      end      
    end
  end
end
