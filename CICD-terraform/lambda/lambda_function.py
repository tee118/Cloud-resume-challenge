import json
import boto3
import os

# Initialize DynamoDB boto3 object
dynamodb = boto3.resource('dynamodb')
# Set DynamoDB table name variable from env
ddbTableName = os.environ['databaseName']
table = dynamodb.Table(ddbTableName)


def lambda_handler(event, context):
    try:
        # Try to update the item
        table.update_item(
            Key={
                'id': 'Visits'
            },
            UpdateExpression='SET Visits = Visits + :value',
            ExpressionAttributeValues={
                ':value': 1
            }
        )
    except:
        # If the item doesn't exist, create it
        table.put_item(
            Item={
                'id': 'Visits',
                'Visits': 1
            }
        )

    # Retrieve the updated item
    ddbResponse = table.get_item(
        Key={
            'id': 'Visits'
        }
    )
    
    # Access the item's attributes
    item = ddbResponse.get('Item')
    if item is not None:
        visits = item.get('Visits', 0)
    else:
        visits = 0
    
    # Format the response body
    responseBody = json.dumps({"count": int(visits)})

    # Create API response object
    apiResponse = {
        "isBase64Encoded": False,
        "statusCode": 200,
        'headers': {
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Methods': 'OPTIONS,POST,GET'
        },
        "body": responseBody
    }

    # Return API response object
    return apiResponse