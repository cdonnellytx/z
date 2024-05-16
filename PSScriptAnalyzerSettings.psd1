# PSScriptAnalyzerSettings.psd1
# Settings for PSScriptAnalyzer invocation.
#
# For more information on PSScriptAnalyzer settings see:
# https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/rules-recommendations?view=ps-modules
# https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/rules/readme?view=ps-modules
#
# You can see the predefined PSScriptAnalyzer settings here:
# https://github.com/PowerShell/PSScriptAnalyzer/tree/master/Engine/Settings
@{
    Severity = @('Error', 'Warning')
    ExcludeRules = @(
        # TODO re-enable these rules where possible; they are disabled for backward compatibility.
        'PSAvoidTrailingWhitespace',
        'PSAvoidUsingCmdletAliases',
        'PSAvoidUsingEmptyCatchBlock',
        'PSAvoidUsingPositionalParameters',
        'PSAvoidUsingWriteHost',
        'PSAvoidGlobalVars'
        'PSPossibleIncorrectComparisonWithNull',
        'PSProvideCommentHelp',
        'PSReviewUnusedParameter',
        'PSUseApprovedVerbs'
        'PSUseDeclaredVarsMoreThanAssignments',
        'PSUseProcessBlockForPipelineCommand',
        'PSUseShouldProcessForStateChangingFunctions',
        'PSUseSingularNouns'
    )

    Rules = @{
        PSUseCompatibleSyntax = @{
            # This turns the rule on (setting it to false will turn it off)
            Enable = $true

            # Simply list the targeted versions of PowerShell here
            TargetVersions = @(
                '3.0'
            )
        }
        PSUseCompatibleCmdlets = @{
            compatibility = @(
                'desktop-3.0-windows',
                'desktop-5.1.14393.206-windows',
                'core-6.1.0-linux',
                'core-6.1.0-macos'
            )

            ignore = @(
                'Register-ArgumentCompleter' # 5.0 and later
            )
        }
    }
}