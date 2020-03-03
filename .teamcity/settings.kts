import jetbrains.buildServer.configs.kotlin.v2019_2.*
import jetbrains.buildServer.configs.kotlin.v2019_2.buildSteps.script

/*
The settings script is an entry point for defining a TeamCity
project hierarchy. The script should contain a single call to the
project() function with a Project instance or an init function as
an argument.

VcsRoots, BuildTypes, Templates, and subprojects can be
registered inside the project using the vcsRoot(), buildType(),
template(), and subProject() methods respectively.

To debug settings scripts in command-line, run the

    mvnDebug org.jetbrains.teamcity:teamcity-configs-maven-plugin:generate

command and attach your debugger to the port 8000.

To debug in IntelliJ Idea, open the 'Maven Projects' tool window (View
-> Tool Windows -> Maven Projects), find the generate task node
(Plugins -> teamcity-configs -> teamcity-configs:generate), the
'Debug' option is available in the context menu for the task.
*/

version = "2019.2"

project {

    buildType(VectorCAST)
}

object VectorCAST : BuildType({
    name = "VectorCAST_GNAT_Ada_Tests_Branch_SIMPLE_ADA_TEST"

    vcs {
        root(DslContext.settingsRoot)
    }

    steps {
        script {
            name = "VC_Setup"
            scriptContent = """
                if not exist "vc_scripts" mkdir vc_scripts 
                xcopy /S /Q /Y C:\Users\vaprti\vector\github\vectorcast-execution-plugin-tms-pipeline\src\main\resources\scripts\*.* vc_scripts
            """.trimIndent()
        }
        script {
            name = "GetJobs"
            scriptContent = "%env.VECTORCAST_DIR%/vpython vc_scripts/getjobs.py PluginTesting.vcm"
        }
        script {
            name = "Build-Execute"
            scriptContent = """
                set path=%env.Path%;C:\vector\tools\gnat\2019\bin
                %env.VECTORCAST_DIR%\vpython vc_scripts\managewait.py --wait_time 30 --wait_loops 1 --command_line "--project  PluginTesting.vcm --level GNAT/Ada_Tests_Branch -e SIMPLE_ADA_TEST --build-execute --incremental --output GNAT_Ada_Tests_Branch_SIMPLE_ADA_TEST_rebuild.html"
            """.trimIndent()
        }
    }
})
