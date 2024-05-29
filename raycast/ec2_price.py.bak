#!/Users/xiaohei/work/.local/bin/python3

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title EC2 Price
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 💰
# @raycast.argument1 { "type": "text", "placeholder": "Type" }
# @raycast.packageName Tool

import requests
import json
import sys
ec2_type = sys.argv[1]
url = "https://api.notion.com/v1/databases/bc4c17e34056438895d1bba3a5ad7406/query"
data = {"filter": {"property": "Type", "rich_text": {"equals": ec2_type}}}
headers = {
    "Content-Type": "application/json",
    "Notion-Version": "2022-06-28",
    "Authorization": "Bearer secret_lPIy8HXaIRSXr0jgwGktDpyTs8G2k99RIffIdgFEF1X"
}
json.dumps(data)
res = requests.post(url, data=json.dumps(data), headers=headers)
price = int(res.json()["results"][0]["properties"]
            ["费用/月"]["formula"]["number"])
print(f"{ec2_type} 价格 - 月: {price}, 半年: {price*6}, 年: {price*12}")

# swift
# import Foundation

# let arguments = Array(CommandLine.arguments.dropFirst())
# let ec2Type = arguments.first!
# print(ec2Type)
# let url = URL(string: "https:#api.notion.com/v1/databases/bc4c17e34056438895d1bba3a5ad7406/query")!
# var request = URLRequest(url: url)
# request.setValue("application/json", forHTTPHeaderField: "Content-Type")
# request.setValue("2022-06-28", forHTTPHeaderField: "Notion-Version")
# request.httpMethod = "POST"
# let parameters: [String: Any] = [
#     "filter": [
#         "property": "Type",
#         "rich_text": [
#             "equals": ec2Type
#         ]
#     ]
# ]

# print(parameters)
# let d = try JSONSerialization.data(withJSONObject: parameters, options: [])

# request.httpBody = d
# print(String(data:d, encoding: .utf8)!)

# enum FetchError:Error {
#     case badID, badImage
# }

# func fetchThumbnail(for id: String) async throws -> Any {
#     let (data, response) = try await URLSession.shared.data(for: request)
#     guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw FetchError.badID }
#     let res = String(data: data, encoding: .utf8)
#     guard let r = await res else { throw FetchError.badImage }
#     return r
# }

# let task: URLSessionDataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
#     print(String(data: data, encoding: .utf8)!)
#     guard
#         let data = data,
#         let response = response as? HTTPURLResponse,
#         error == nil
#     else {                                                               # check for fundamental networking error
#         print("error", error ?? URLError(.badServerResponse))
#         return
#     }

#     guard (200 ... 299) ~= response.statusCode else {                    # check for http errors
#         print("statusCode should be 2xx, but is \(response.statusCode)")
#         print("response = \(response)")
#         return
#     }

#     # do whatever you want with the `data`, e.g.:
#     print(data)
#     do {
#         let responseObject = try JSONDecoder().decode(ResponseObject<Foo>.self, from: data)
#         print(responseObject)
#     } catch {
#         print(error) # parsing error
#         if let responseString = String(data: data, encoding: .utf8) {
#             print("responseString = \(responseString)")
#         } else {
#             print("unable to parse response as string")
#         }
#     }
# }
# task.resume()
# https.post(
#   "https:#api.notion.com/v1/databases/bc4c17e34056438895d1bba3a5ad7406/query"
# );

# name: Query EC2 Price
# command: |
# curl -X POST https:#api.notion.com/v1/databases/bc4c17e34056438895d1bba3a5ad7406/query \
#   -H 'Authorization: Bearer secret_lPIy8HXaIRSXr0jgwGktDpyTs8G2k99RIffIdgFEF1X' \
#   -H "Content-Type: application/json" \
#   -H "Notion-Version: " \
#     --data '{
#     "filter": {
#         "property": "Type",
#         "rich_text": {
#             "equals": "{{type}}"
#         }
#     }
# }' | jq '.results[0].properties."费用\/月".formula.number'
# arguments:
#   - name: type
#     description: ec2 type

# console.log(
#   util.inspect(data, { showHidden: false, depth: null, colors: true })
# );
