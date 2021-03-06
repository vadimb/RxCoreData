Pod::Spec.new do |s|
    s.name                  = "RxCoreData"
    s.version               = "0.2.0"
    s.summary               = "RxSwift extensions for Core Data"
    s.description           = <<-DESC
    Provides types and extensions for working with Core Data. For example, you can create and hook up a Core Data request to a table view with just a few lines of code:
    ```let fetchRequest = NSFetchRequest(entityName: "User")

    fetchRequest.predicate = NSPredicate(query: "username CONTAINS[cd] %@", searchTerm)

    fetchRequest.sortDescriptors = [NSSortDescriptor(key: "username", ascending: true)]

    managedObjectContext.rx_entities(fetchRequest)
    .bindTo(tableView.rx_itemsWithDataSource(animatedDataSource))
    .addDisposableTo(disposeBag)```
    DESC

    s.homepage              = "https://github.com/RxSwiftCommunity/RxCoreData"
    s.license               = { :type => "MIT", :file => "LICENSE.md" }
    s.author                = { "Scott Gardner" => "scott.gardner@mac.com" }
    s.source                = { :git => "https://github.com/RxSwiftCommunity/RxCoreData.git", :tag => s.version.to_s }
    s.social_media_url      = "https://twitter.com/scotteg"

    s.ios.deployment_target = '9.1'

    s.source_files = 'RxCoreData/Sources/**/*'

    s.frameworks            = 'UIKit', 'CoreData'

    s.dependency 'RxSwift', '~> 2.5'
    s.dependency 'RxCocoa', '~> 2.5'
end
