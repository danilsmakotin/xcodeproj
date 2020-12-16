import Foundation

public extension PBXGroup {
    /// Adds group as a child
    ///
    /// - Parameter group: existing group
    func addGroup(_ group: PBXGroup) throws {
        let objects = try self.objects()
        objects.add(object: group)
        if !self.childrenReferences.contains(group.reference) {
            self.childrenReferences.append(group.reference)
        }
    }

    /// Add file reference to the project
    ///
    /// - Parameter fileReference: existing fileReference
    func addFileReference(_ fileReference: PBXFileReference) throws {
        let projectObjects = try objects()
        projectObjects.add(object: fileReference)
        if !childrenReferences.contains(fileReference.reference) {
            childrenReferences.append(fileReference.reference)
        }
    }
}
