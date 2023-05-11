sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'riskmanagment/risk/test/integration/FirstJourney',
		'riskmanagment/risk/test/integration/pages/RisksList',
		'riskmanagment/risk/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('riskmanagment/risk') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);