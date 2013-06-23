part of travel_impressions;

// http://www.json.org/
// http://jsonformatter.curiousconcept.com/

// lib/travel/impressions/json/model.dart

var travelImpressionsModelJson = r'''
{
    "width":990,
    "lines":[
        {
            "box2box1Max":"1",
            "box1Name":"Place",
            "box1box2Min":"0",
            "box2Name":"Impression",
            "box1box2Id":false,
            "box2box1Id":true,
            "box2box1Name":"place",
            "box1box2Max":"N",
            "box1box2Name":"impressions",
            "box2box1Min":"1",
            "category":"relationship",
            "internal":false
        },
        {
            "box2box1Max":"1",
            "box1Name":"Traveler",
            "box1box2Min":"0",
            "box2Name":"Message",
            "box1box2Id":false,
            "box2box1Id":true,
            "box2box1Name":"traveler",
            "box1box2Max":"N",
            "box1box2Name":"messages",
            "box2box1Min":"1",
            "category":"relationship",
            "internal":true
        },
        {
            "box2box1Max":"1",
            "box1Name":"Message",
            "box1box2Min":"0",
            "box2Name":"Impression",
            "box1box2Id":false,
            "box2box1Id":true,
            "box2box1Name":"message",
            "box1box2Max":"N",
            "box1box2Name":"impressions",
            "box2box1Min":"1",
            "category":"relationship",
            "internal":true
        },
        {
            "box2box1Max":"1",
            "box1Name":"Country",
            "box1box2Min":"0",
            "box2Name":"Place",
            "box1box2Id":false,
            "box2box1Id":true,
            "box2box1Name":"country",
            "box1box2Max":"N",
            "box1box2Name":"places",
            "box2box1Min":"1",
            "category":"relationship",
            "internal":true
        },
        {
            "box2box1Max":"1",
            "box1Name":"Place",
            "box1box2Min":"0",
            "box2Name":"WebLink",
            "box1box2Id":false,
            "box2box1Id":false,
            "box2box1Name":"place",
            "box1box2Max":"N",
            "box1box2Name":"webLinks",
            "box2box1Min":"1",
            "category":"relationship",
            "internal":true
        },
        {
            "box2box1Max":"1",
            "box1Name":"Traveler",
            "box1box2Min":"0",
            "box2Name":"Following",
            "box1box2Id":false,
            "box2box1Id":true,
            "box2box1Name":"follows",
            "box1box2Max":"N",
            "box1box2Name":"followedBy",
            "box2box1Min":"1",
            "category":"twin",
            "internal":true
        },
        {
            "box2box1Max":"1",
            "box1Name":"Traveler",
            "box1box2Min":"0",
            "box2Name":"Following",
            "box1box2Id":false,
            "box2box1Id":true,
            "box2box1Name":"followedBy",
            "box1box2Max":"N",
            "box1box2Name":"follows",
            "box2box1Min":"1",
            "category":"twin",
            "internal":false
        }
    ],
    "height":580,
    "boxes":[
        {
            "width":80,
            "entry":true,
            "name":"Traveler",
            "x":35,
            "height":120,
            "y":18,
            "items":[
                {
                    "sequence":60,
                    "name":"email",
                    "init":"",
                    "essential":true,
                    "sensitive":false,
                    "category":"identifier",
                    "type":"Email"
                },
                {
                    "sequence":70,
                    "name":"password",
                    "init":"sensitive",
                    "essential":false,
                    "sensitive":true,
                    "category":"required",
                    "type":"String"
                },
                {
                    "sequence":80,
                    "name":"firstName",
                    "init":"",
                    "essential":true,
                    "sensitive":false,
                    "category":"required",
                    "type":"String"
                },
                {
                    "sequence":90,
                    "name":"lastName",
                    "init":"",
                    "essential":true,
                    "sensitive":false,
                    "category":"required",
                    "type":"String"
                },
                {
                    "sequence":100,
                    "name":"description",
                    "init":"",
                    "essential":false,
                    "sensitive":false,
                    "category":"attribute",
                    "type":"String"
                }
            ]
        },
        {
            "width":80,
            "entry":false,
            "name":"Place",
            "x":33,
            "height":80,
            "y":157,
            "items":[
                {
                    "sequence":10,
                    "name":"name",
                    "init":"",
                    "essential":true,
                    "sensitive":false,
                    "category":"identifier",
                    "type":"String"
                },
                {
                    "sequence":30,
                    "name":"city",
                    "init":"",
                    "essential":true,
                    "sensitive":false,
                    "category":"attribute",
                    "type":"String"
                },
                {
                    "sequence":50,
                    "name":"description",
                    "init":"",
                    "essential":false,
                    "sensitive":false,
                    "category":"attribute",
                    "type":"String"
                }
            ]
        },
        {
            "width":80,
            "entry":false,
            "name":"Impression",
            "x":414,
            "height":60,
            "y":378,
            "items":[
                {
                    "sequence":20,
                    "name":"text",
                    "init":"",
                    "essential":true,
                    "sensitive":false,
                    "category":"required",
                    "type":"String"
                }
            ]
        },
        {
            "width":80,
            "entry":false,
            "name":"Message",
            "x":279,
            "height":80,
            "y":194,
            "items":[
                {
                    "sequence":10,
                    "name":"date",
                    "init":"now",
                    "essential":true,
                    "sensitive":false,
                    "category":"identifier",
                    "type":"DateTime"
                },
                {
                    "sequence":20,
                    "name":"subject",
                    "init":"",
                    "essential":true,
                    "sensitive":false,
                    "category":"required",
                    "type":"String"
                },
                {
                    "sequence":30,
                    "name":"text",
                    "init":"",
                    "essential":false,
                    "sensitive":false,
                    "category":"attribute",
                    "type":"String"
                }
            ]
        },
        {
            "width":60,
            "entry":true,
            "name":"Country",
            "x":43,
            "height":60,
            "y":381,
            "items":[
                {
                    "sequence":20,
                    "name":"name",
                    "init":"",
                    "essential":true,
                    "sensitive":false,
                    "category":"identifier",
                    "type":"String"
                }
            ]
        },
        {
            "width":80,
            "entry":false,
            "name":"WebLink",
            "x":202,
            "height":80,
            "y":359,
            "items":[
                {
                    "sequence":10,
                    "name":"url",
                    "init":"",
                    "essential":true,
                    "sensitive":false,
                    "category":"identifier",
                    "type":"Uri"
                },
                {
                    "sequence":20,
                    "name":"title",
                    "init":"",
                    "essential":true,
                    "sensitive":false,
                    "category":"attribute",
                    "type":"String"
                },
                {
                    "sequence":30,
                    "name":"description",
                    "init":"",
                    "essential":false,
                    "sensitive":false,
                    "category":"attribute",
                    "type":"String"
                }
            ]
        },
        {
            "width":100,
            "entry":false,
            "name":"Following",
            "x":404,
            "height":80,
            "y":29,
            "items":[
                {
                    "sequence":10,
                    "name":"updateRights",
                    "init":"false",
                    "essential":true,
                    "sensitive":false,
                    "category":"required",
                    "type":"bool"
                }
            ]
        }
    ]
}
''';
