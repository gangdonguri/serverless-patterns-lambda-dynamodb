process.env.AWS_REGION='ap-northeast-2';
process.env.DatabaseTable='demo-sam-DynamoTable-123TOWRBPM4UV';
(async () => {
    const asyncMsg = await require('./app').handler(require('../event.json'));
    console.log(asyncMsg);
})();
