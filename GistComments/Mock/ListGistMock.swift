//
//  ListGistMock.swift
//  GistComments
//
//  Created by Jeferson Nazario on 15/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

class ListGistMock {
    static func get() -> Gist {
        let firstFile = GistFile(filename: "HardParts-Extension3", type: "JS", language: "javascript", content: "function intersection(arrays) {\n    let i = 0;\n    while (i < arrays.length-1) {\n        newItem = (compare(arrays[i], arrays[i+1]));\n\n        i++;\n     }\n    return newItem;\n};\n\nfunction compare(arr1, arr2) {\n    var compArray = [];\n    for (var i= 0; i < arr2.length; i++) {\n        for (var j= 0; j < arr1.length; j++) {\n            if (arr1[i] === arr2[j]) {                \n                compArray.push(arr2[j]);\n            }\n        }\n    }\n    return compArray;\n};")
       
        let secondFile = GistFile(filename: "NewFunction-NewCode", type: "SH", language: "Shell", content: "usage() { echo \"Usage: $0 [-i <mris_anatomical_stats output>]\" 1>&2; exit 1; }\n\nwhile getopts \":i:\" o; do\n\tcase \"${o}\" in\n\t\ti)\n\t\t\ti=${OPTARG}\n\t\t\t;;\n\t\t*)\n\t\t\tusage\n\t\t\t;;\n\tesac\ndone\nshift \"$((OPTIND-1))\"\n\nif [ -z \"${i}\" ]; then\n    usage\nfi\n\nname=`echo $i | cut -d \".\" -f 1`\noutput=${name}_stats.csv\n\nif [ ! -f $output ]; then\n\ttouch $output\nelse \n    echo \"WARNING: Scraper already used on this mris_anatomical_stats output. Resulting output may contain redundant information.\"\nfi\n\necho \"subject,thickness\" > $output\n\nmkdir temporary\ncsplit -s $i '/^structure/' '{*}'\nrm -f xx00\nmv xx* temporary/\n\nfor j in temporary/xx*; do \n\tsubj=`cat $j | grep structure | cut -d \" \" -f 3 | cut -d \"/\" -f 1 | tr -d \"\\\"\"`\n\tthick=`cat $j | grep \"average cortical thickness\" | tr -s \" \" | cut -d \" \" -f 5`\n\techo $subj,$thick >> $output\ndone\n\nrm -fr temporary")
        
        var gistFiles = [GistFile]()
        gistFiles.append(firstFile)
        gistFiles.append(secondFile)
        
        let commentOwner = GistUser(login: "hhanschu", avatarUrl: "https://avatars3.githubusercontent.com/u/27985753?v=4", profileUrl: "https://github.com/hhanschu", type: "User")
    
        let gistComment = GistComment(commentId: "2648032", authorAssociation: "OWNER", createdAt: "2018-07-15T19:06:01Z", lastUpdate: "2018-07-15T19:06:01Z", body: "My strategy works with my \"string\" test:\r\n`var arr1 = [\"apple\", \"gorilla\", \"potato\"];\r\nvar arr2 = [\"gorilla\", \"bench\", \"apple\"];\r\nvar arr3 = [\"mosquito\", \"pumpkin\", \"apple\"];\r\nvar arrays = [arr1, arr2, arr3];\r\n\r\nintersection(arrays);`\r\n\r\nbut not with the numeric example:\r\n`var nums1 = [5, 10, 15, 20]\r\nvar nums2 = [15, 88, 1, 5, 7]\r\nvar nums3 = [1, 10, 15, 5, 20]\r\nvar arrNums = [nums1, nums2, nums3];\r\n\r\nintersection(arrNums);`\r\n\r\nand it doesn't work at all when the array is listed out like the question requests.\r\n`console.log(intersection([5, 10, 15, 20], [15, 88, 1, 5, 7], [1, 10, 15, 5, 20]));`", owner: commentOwner)
        
        let gistOwner = GistUser(login: "hhanschu", avatarUrl: "https://avatars3.githubusercontent.com/u/27985753?v=4", profileUrl: "https://github.com/hhanschu", type: "User")
        
        var gistComments = [GistComment]()
        gistComments.append(gistComment)
        
        let myGist = Gist(gistId: "0591fb0c041930f5014df83e46314d96", htmlUrl: "https://gist.github.com/0591fb0c041930f5014df83e46314d96", files: gistFiles, lastUpdate: "2018-07-15T19:06:01Z", comments: gistComments, owner: gistOwner)
        
        return myGist
    }
}
