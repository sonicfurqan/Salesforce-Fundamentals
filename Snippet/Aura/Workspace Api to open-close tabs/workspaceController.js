({

    openSubTab: function (component, event, helper) {
        let workspaceAPI = component.find("workspace");
        workspaceAPI.getFocusedTabInfo().then(function (response) {
            let focusedTabId = response.tabId;
            let recordId = 'your record id';
            workspaceAPI.openSubtab({ parentTabId: focusedTabId, recordId: recordId, focus: false })
                .then(function (response) {
                    workspaceAPI.focusTab({ tabId: response });
                });
        }).catch(function (error) { });

    },


    openTab: function (component, event, helper) {
        let workspaceAPI = component.find("workspace");
        workspaceAPI.getFocusedTabInfo().then(function (response) {
            let focusedTabId = response.tabId;
            let recordId = 'your record id';
            workspaceAPI.openTab({ recordId: recordId, focus: true, overrideNavRules: true })
                .then(function (response) {
                    workspaceAPI.closeTab({ tabId: focusedTabId })
                        .then(function (success) {
                            workspaceAPI.focusTab({ tabId: response });
                        });
                });
        })
            .catch(function (error) {
                console.log(error);
            });
    },

    closeCurrentTab: function (component, event, helper) {


        var workspaceAPI = component.find("workspace");
        workspaceAPI.getFocusedTabInfo().then(function (response) {
            var focusedTabId = response.tabId;
            workspaceAPI.closeTab({ tabId: focusedTabId });
        })
            .catch(function (error) {
                console.log(error);
            });



    }

})