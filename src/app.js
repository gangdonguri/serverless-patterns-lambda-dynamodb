/*! Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *  SPDX-License-Identifier: MIT-0
 */

// dependencies
const AWS = require('aws-sdk');
const moment = require('moment');
const documentClient = new AWS.DynamoDB.DocumentClient();

exports.handler =  async (event) => {
    let params = {
        TableName : process.env.DatabaseTable,
        Item: {
        ID: Math.floor(Math.random() * Math.floor(10000000)).toString(),
        body: JSON.stringify(event),
        }
    }
    try {
        let date = await documentClient.put(params).promise()
    }
    catch (err) {
        console.log(err)
        return err
    }
    return {
          statusCode: 200,
          body: 'OK!',
      }
}
