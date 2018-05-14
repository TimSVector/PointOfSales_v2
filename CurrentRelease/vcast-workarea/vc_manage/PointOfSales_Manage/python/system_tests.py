'''
This file contains functions that will be invoked by VectorCAST/Manage to
provide custom build and execute commands based on the name of a
VectorCAST/Cover environment in a VectorCAST/Manage project.
'''
import os
import glob
from vector.manage.system_tests_factory import Component
from vector.manage.system_tests_factory import SystemTests
from vector.manage.system_tests_factory import SystemTestsFactory
from vector.manage.system_tests_factory import TestCase
from vector.manage.system_tests_factory import ManualTestCase
from vector.manage.system_tests_factory import appendCoverIOfileToMainFiles
from vector.manage.system_tests_factory import implementation_needed_warning
from vector.manage.manualTestDialog import manualTest
from vector.lib.core import system

import platform

'''
START OF USER-MODIFIABLE SECTION OF FILE ------------------------------------------
 
The following configuration data needs to be modified to enable the 
build and execute commands for a particular environment.

NOTE: When setting up path strings on windows, make sure that you
      either use the raw string modifier like this:  r'v:\myDirectory'
      or you double the backslashes, like this:  'v:\\myDirectory'
'''

def getShell():
        shell = os.environ.get('COMSPEC', None)
        if shell:
            return shell
        else:
            return 'xterm'

class SystemTestsConfiguration(object):
    # added to fixup project for data/control coupling
    def fixupCoupling(self):
        vcp = 'vcast-workarea/vc_coverage/PointOfSales_Coverage/'
        useCoupling = ""
        if os.path.isdir(vcp + 'coupling'):
            print "has coupling dir"
            
            if os.path.isfile(vcp + 'coupling/components.xml'):
                print "has coupling components.xml"
                
            if len(glob.glob(vcp + 'coupling/*.*')) > 1:
                print "has coupling analysis completed"
                
                if os.path.isfile(vcp+'vcast_probe_points.xml'):
                    f=open(vcp+'vcast_probe_points.xml','r')
                    data = f.read()
                    f.close()
                    if "vcastControlCoupleCall" in data:

                        print "has coupling coverage applied"
                        useCoupling = " -DUSE_COUPLING_DATA_C"
                        
                        f=open(vcp+'c_cover_io.c','r')
                        data = f.readlines()
                        f.close()
                        if "USE_COUPLING_DATA_C" not in data[0]:
                            print "adding in coupling/couplingData.c to c_cover_io.c"
                            f=open(vcp+'c_cover_io.c','w')
                            f.write("#ifdef USE_COUPLING_DATA_C\n")
                            f.write("#include \"coupling/couplingData.c\"\n")
                            f.write("#endif\n")
                            f.write("".join(data))
                            f.close()
                        else:
                            print "coupling/couplingData.c already included c_cover_io.c"
                    else:
                        f=open(vcp+'c_cover_io.c','r')
                        data = f.readlines()
                        f.close()
                        if "#ifdef USE_COUPLING_DATA_C" in data[0]:
                            print "Removing in coupling/couplingData.c to c_cover_io.c"
                            f=open(vcp+'c_cover_io.c','w')
                            f.write("".join(data[3:]))
                            f.close()
                            
        return useCoupling

    def __init__(self):
        # Set this flag to True to enable custom build and excute processing
        self.implementationProvided = True

        # Set the environment's variables for spawned processes
        self.environmentVariables = {}

        # This is the path to where the build or make command should be executed
        self.locationWhereWeRunMake = r'../..'
        
        if platform.system() == "Windows":
            # This is the top level make command needed to build the application
           self.topLevelMakeCommand = 'make.bat '
        else:
           self.topLevelMakeCommand = 'sh make.sh '

        print os.getcwd()

        TestExecGui = os.environ['VECTORCAST_DIR'] + '/vpython post_gui.py'

        # List of TestCase to run against the instrumented executable
        self.masterListOfTestCases = [TestCase('Occupied'),
                                      TestCase('Lobster'),
                                      TestCase('Steak'),
                                      TestCase('AddFreeDessert'),
                                      TestCase('GetCheck'),
                                      TestCase('TableClear'),
                                      TestCase('PayBill'),
                                      TestCase('Default'),
                                      TestCase('_Sequence'),
                                      ManualTestCase('Steak_Manual'  , 'steak_manual.txt' , TestExecGui),
                                      ManualTestCase('Lobster_Manual', 'lobster_manual.txt', TestExecGui)]

        # If you have your instrumented application configured to use file output
        # The coverage data will be in the TESTINSS.DAT file after the test is run
        # If you use some other technique to capture the coverage data you will need
        # to update the location and the name of the coverageDataFile
        self.locationWhereWeRunTests = '../..'
        self.nameOfCoverageDataFile = r'TESTINSS.DAT'

        # This is the name of the test application to be invoked when running a test
        if platform.system() == "Windows":
            # This is the top level make command needed to build the application
            self.nameOfTestExecutable = 'post.exe'
        else:
           self.nameOfTestExecutable = './post.exe '

        # Un-comment the following assignment to activate "component coverage."
        # The self.components member is a list of VectorCAST components, where each
        # component is a subset of the files in the application (built in the
        # self._get_component member.)
        # 
        # When component coverage is active, the instrumentation of the application is
        # performed for one component at a time, and the full set of tests are run for 
        # each component.  This feature is useful when the fully instrumented application
        # will not fit on the target.
        # 
        # Refer to the User Guide for a complete explanation of the component coverage
        # feature. 
        # self.components = self._get_component()

    def commandToRunATest (self, test_case):
        '''
        This user defined function should contain the logic to compute the 
        command needed to execute a test.

        By default we invoke commandToRunTest and pass it a TestCase
        '''
        return self.nameOfTestExecutable + ' ' + test_case.get_name()

    def interpretTestResults (self, testName, returnCode):
        '''
        This user defined function should interpret the results of running a test
        It may be necessary to parse a file, or just to check the return code
        By default, we simply check the return code to indicate pass or fail
        '''
        if returnCode==0:
            return 1,1
        else:
            return 0,1
 
    def getFileList(self,dir):
        return [os.path.abspath(x) for x in glob.glob("../../" + dir + '/src/*.c')]

    def _get_named_component(self,key):
        out = Component(key + "_component")
        for file in self.getFileList(key):
            out.sources.append(file)
        out.testcases = self.masterListOfTestCases

        return out

    def _get_component(self):
        out = []
        components = ['database', 'encrypt', 'order_entry', 'utils']
        for c in components:
            out.append(self._get_named_component(c))

        return out 
'''
END OF USER-MODIFIABLE SECTION OF FILE --------------------------------------------

You should not have the modify the logic below this line but are free to do so.
''' 


class DefaultSystemTests(SystemTests):
    '''
    Each instance of this class is capable of building an instrumented
    executable for a VectorCAST/Cover project and running all of the
    system tests for that project. 
    '''
    def __init__(self, configuration):
        super(DefaultSystemTests, self).__init__()
        self.configuration = configuration
        self.process_environment.update(self.configuration.environmentVariables)

    def build(self):
        '''
        Build an executable for system testing.
        
        @return
        This function will return 0 upon success or non-zero otherwise.
        '''
        if not self.configuration.implementationProvided:
            implementation_needed_warning() 
            return 1
        else: 
            # The following example code should help you understand the code to add.
            # cd to the place where make should be run
            with system.cd (self.configuration.locationWhereWeRunMake):
                # The self.run() command will log the stdout from the make
                return self.run (self.configuration.topLevelMakeCommand + self.configuration.fixupCoupling())

        return 1 

    def get_test_cases(self):
        '''
        Return a list of TestCase for this VectorCAST/Cover project.
        These test cases will be passed into the run_test_case() method when 
        VectorCAST needs to run a test.

        @return
        A list of TestCase.
        '''
        if not self.configuration.implementationProvided:
            implementation_needed_warning()     # Remove this line once implemented.
            return []                           # Remove this line once implemented.
            
        else:
            # The following example code should help you understand the code to add
            return self.configuration.masterListOfTestCases
        
    def run_test_case(self, test_case):
        '''
        Run the given TestCase

        @return
        This function gets called one for each test to run
        it should return 0 upon success or non-zero otherwise.
        '''    
        
        if not self.configuration.implementationProvided:
            implementation_needed_warning()     # Remove this line once implemented.
            return 1                            # Remove this line once implemented.
            
        else:
            # The following example code should help you understand the code to add
            commandStatus = 0
            coverageStatus = 0

            with system.cd (self.configuration.locationWhereWeRunTests):
            
                # If you have your instrumented application configured to use file output
                # The coverage data will be in the TESTINSS.DAT file after the test is run
                coverageDataFile = os.path.join(os.path.abspath(os.getcwd()), self.configuration.nameOfCoverageDataFile) 
                # Run the correct test, based on the test_name parameter
                if test_case.is_manual():
                   commandStatus = manualTest (test_case.get_name(), '.', test_case.get_command(), test_case.get_steps())
                else:
                   print self.configuration.commandToRunATest (test_case)
                   commandStatus = self.run (self.configuration.commandToRunATest (test_case))
                   
                # -1 means a manual test was cancelled so we do not process status, or coverage
                if commandStatus != -1:
                    # Only load the coverage data if it exists
                    if os.path.isfile(coverageDataFile): 
                        # The call to add_testinss() stores the coverage data
                        self.add_testinss(coverageDataFile, test_case.get_name()) 
                    else:
                        coverageStatus = 1 # No coverage data
                        print ('Coverage data file not found (' + test_case.get_name() + '): ' + coverageDataFile)
                        
                    # Store the pass / fail status for the test
                    passedCount, totalCount =  self.configuration.interpretTestResults (test_case.get_name(), commandStatus)
                    self.set_results(test_name=test_case.get_name(), passed=passedCount, total=totalCount) 

                if commandStatus != 0:
                    return commandStatus
                elif coverageStatus != 0:
                    return coverageStatus
                else:
                    return 0

    def get_components(self):
        '''Return the components for this VectorCAST/Cover project.
  
        @return
        A list of Component.
        '''  
        if hasattr(self.configuration, 'components'):
            return self.configuration.components
        else:
            return []

# Register the class with VectorCAST/Manage
SystemTestsFactory.register({'default': DefaultSystemTests(SystemTestsConfiguration())})
