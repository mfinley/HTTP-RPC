//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import UIKit
import MarkupKit
import HTTPRPC

class AddNoteViewController: UITableViewController {
    override func loadView() {
        view = LMViewBuilder.viewWithName("AddNoteView", owner: self, root: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = NSBundle.mainBundle().localizedStringForKey("addNote", value: nil, table: nil)

        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Cancel,
            target: self, action: #selector(AddNoteViewController.cancel))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Done,
            target: self, action: #selector(AddNoteViewController.done))

        edgesForExtendedLayout = UIRectEdge.None
    }

    func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }

    func done() {
        // TODO

        dismissViewControllerAnimated(true, completion: nil)
    }
}
