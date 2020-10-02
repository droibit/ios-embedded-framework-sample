platform :ios, '11.0'

target 'Core' do
  pod 'Firebase/Analytics', '6.31.0', :modular_headers => true

  target 'CoreTests' do
    inherit! :search_paths
  end

  target 'EmbeddedFW-Sample' do
    #use_frameworks!
    inherit! :search_paths

    pod 'PKHUD', '5.3'

    target 'EmbeddedFW-SampleTests' do
      inherit! :search_paths
    end
  end  

end
