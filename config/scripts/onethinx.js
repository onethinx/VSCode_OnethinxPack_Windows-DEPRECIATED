exports.execute = async (args) => {
    const vscode = args.require('vscode');
    var ret = await vscode.commands.executeCommand('cmake.build');
    if (ret == 0) return '';
    var ret2 = JSON.stringify(ret);
    vscode.commands.executeCommand('workbench.action.problems.focus', 'CMake/Build');
    vscode.window.showErrorMessage("Your Onethinx code didn't built well...\n\nTry some more :-)", { modal: true });
    return null;
};