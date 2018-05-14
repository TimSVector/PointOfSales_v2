# This script defines the SvnLockExtended python class, which is a
# subclass of the SvnLock class found in
# $VECTORCAST_DIR/python/manage/scm/svnlock.py.
#
# You may modify this script freely to extend or reimplement the
# behavior of SvnLock.  Note that while you may edit the
# $VECTORCAST_DIR/python/manage/scm/svnlock.py script directly, future
# installations of VectorCAST may overwrite that script.
#
# An instance of the class will generally be kept in memory for a full
# lock/unlock cycle for each file locked, so you may utilize class
# member variables with the assumption they will be stored until
# unlock() is called.
#
# It is not necessary to call the base functions in SvnLock from
# SvnLockExtended, although you should do so if you wish to preserve the
# current behavior in SvnLock.
#
# Here are some examples of useful ways to extend the lock() function:
#
#     def lock(self, filename):
#         # Run a custom command before the standard locking occurs
#         self.custom_user_function(filename)
#         return svnlock.SvnLock.lock(self, filename)
#
#     def lock(self, filename):
#         # Run a custom command after the standard locking occurs
#         (exitstatus, output) = svnlock.SvnLock.lock(self, filename)
#         self.custom_user_function(filename)
#         return (exitstatus, output)
#
#     def lock(self, filename):
#         # Totally reimplemented lock() function using Popen, PIPE,
#         # and STDOUT from the subprocess Python module.
#         p = Popen([self.command, "lock", filename], stdout=PIPE, stderr=STDOUT, shell=True)
#         output = p.communicate()
#         return (p.returncode, output[0])


import sys
import svnlock


class SvnLockExtended(svnlock.SvnLock):
    def __init__(self, *args, **keywords):
        super(SvnLockExtended, self).__init__(*args, **keywords)

    def lock(self, filename):
        ''' Attempts to lock the file.'''
        # Override the locking function here.
        # This function must return a tuple containing a success boolean and
        # the error text in case of a failure.
        return svnlock.SvnLock.lock(self, filename)

    def unlock(self, files, commit_msg = ''):
        ''' Attempts to unlock the files.'''
        # Override the unlocking function here.
        # This function must return a tuple containing a success boolean and
        # the error text in case of a failure.
        return svnlock.SvnLock.unlock(self, files, commit_msg)

    def revert(self, filename):
        ''' Reverts any changes and releases a lock. '''
        # Override the revert function here.
        # This function must return a tuple containing a success boolean and
        # the error text in case of a failure.
        return svnlock.SvnLock.revert(self, filename)

    def diff(self, files):
        ''' Returns the diff of modified files.'''
        # Override the diff function here.
        # This function must return a tuple containing a success boolean and
        # the error text in case of a failure.
        return svnlock.SvnLock.diff(self, files)

    def isLockedLocally(self, filename):
        ''' Returns true if the file is locked by us in a local checkout.'''
        # Override the isLockedLocally function here.
        return svnlock.SvnLock.isLockedLocally(self, filename)

    def isLockedRemotely(self, filename):
        ''' Returns true if the file is locked remotely.'''
        # Override the isLockedRemotely function here.
        return svnlock.SvnLock.isLockedRemotely(self, filename)

    def underControl(self, filename):
        ''' Returns true if the file is under control of this SCM system.'''
        # Override the underControl function here.
        return svnlock.SvnLock.underControl(self, filename)

    def addFile(self, filename):
        ''' Attempts to add the file using "svn add". '''
        # Override the addFile function here.
        return svnlock.SvnLock.addFile(self, filename)

    def addDirectory(self, dirname):
        ''' Attempts to add the directory using "svn add". '''
        # Override the addDirectory function here.
        return svnlock.SvnLock.addDirectory(self, dirname)

    def removeFile(self, filename):
        ''' Attempts to remove the file using "svn remove". '''
        # Override the removeFile function here.
        return svnlock.SvnLock.removeFile(self, filename)

    def removeDirectory(self, dirname):
        ''' Attempts to remove the directory using "svn remove". '''
        # Override the removeDirectory function here.
        return svnlock.SvnLock.removeDirectory(self, dirname)


# This code isn't actually necesary but is useful for testing from a shell.
if __name__ == "__main__":
    result = (False, "")
    if len(sys.argv) >= 3:
        obj = SvnLockExtended()
        if sys.argv[1] == "lock":
            result = obj.lock(sys.argv[2])
        elif sys.argv[1] == "unlock":
            result = obj.unlock(sys.argv[2])
        elif sys.argv[1] == "diff":
            result = obj.diff(sys.argv[2])
        elif sys.argv[1] == "isLockedLocally":
            result = obj.isLockedLocally(sys.argv[2])
        elif sys.argv[1] == "isLockedRemotely":
            result = obj.isLockedRemotely(sys.argv[2])

    print result[1]
