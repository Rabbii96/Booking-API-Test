
{
	"info": {
		"_postman_id": "8147ce01-e603-4ef2-a6a9-e6c2366428c4",
		"name": "Booker",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json",
		"_exporter_id": "22688031"
	},
	"item": [
		{
			"name": "Create Token",
			"request": {
				"method": "POST",
				"header": [
					{
						"key": "Content-Type",
						"value": "application/json"
					}
				],
				"body": {
					"mode": "raw",
					"raw": "{\n    \"username\" : \"admin\",\n    \"password\" : \"password123\"\n}"
				},
				"url": {
					"raw": "{{baseUrl}}auth",
					"host": [
						"{{baseUrl}}auth"
					]
				}
			},
			"response": []
		},
		{
			"name": "GetBookingIds",
			"event": [
				{
					"listen": "test",
					"script": {
						"exec": [
							"pm.test(\"Status code is 200\", function () {\r",
							"    pm.response.to.have.status(200);\r",
							"});"
						],
						"type": "text/javascript"
					}
				}
			],
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "{{baseUrl}}/booking",
					"host": [
						"{{baseUrl}}"
					],
					"path": [
						"booking"
					]
				}
			},
			"response": []
		},
		{
			"name": "GetBooking",
			"event": [
				{
					"listen": "test",
					"script": {
						"exec": [
							"pm.test(\"Status code is 200\", function () {\r",
							"    pm.response.to.have.status(200);\r",
							"});"
						],
						"type": "text/javascript"
					}
				}
			],
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "{{baseUrl}}/booking/40953",
					"host": [
						"{{baseUrl}}"
					],
					"path": [
						"booking",
						"40953"
					]
				}
			},
			"response": []
		},
		{
			"name": "CreateBookig",
			"event": [
				{
					"listen": "test",
					"script": {
						"exec": [
							"pm.test(\"Status code is 200\", function () {\r",
							"    pm.response.to.have.status(200);\r",
							"});"
						],
						"type": "text/javascript"
					}
				}
			],
			"request": {
				"method": "POST",
				"header": [
					{
						"key": "Content-Type",
						"value": "application/json"
					}
				],
				"body": {
					"mode": "raw",
					"raw": "{\n    \"firstname\" : \"Jim\",\n    \"lastname\" : \"Brown\",\n    \"totalprice\" : 111,\n    \"depositpaid\" : true,\n    \"bookingdates\" : {\n        \"checkin\" : \"2018-01-01\",\n        \"checkout\" : \"2019-01-01\"\n    },\n    \"additionalneeds\" : \"Breakfast\"\n}"
				},
				"url": {
					"raw": "https://restful-booker.herokuapp.com/booking",
					"protocol": "https",
					"host": [
						"restful-booker",
						"herokuapp",
						"com"
					],
					"path": [
						"booking"
					]
				}
			},
			"response": []
		},
		{
			"name": "UpdateBooking",
			"event": [
				{
					"listen": "test",
					"script": {
						"exec": [
							"pm.test(\"Status code is 200\", function () {\r",
							"    pm.response.to.have.status(200);\r",
							"});"
						],
						"type": "text/javascript"
					}
				}
			],
			"request": {
				"method": "PUT",
				"header": [
					{
						"key": "Content-Type",
						"value": "application/json"
					},
					{
						"key": "Accept",
						"value": "application/json"
					},
					{
						"key": "Cookie",
						"value": "token=3671b1b2776459f"
					}
				],
				"body": {
					"mode": "raw",
					"raw": "{\n    \"firstname\" : \"fazlay\",\n    \"lastname\" : \"Rabbi\",\n    \"totalprice\" : 111,\n    \"depositpaid\" : true,\n    \"bookingdates\" : {\n        \"checkin\" : \"2018-01-01\",\n        \"checkout\" : \"2019-01-01\"\n    },\n    \"additionalneeds\" : \"Breakfast\"\n}"
				},
				"url": {
					"raw": "{{baseUrl}}/booking/58477",
					"host": [
						"{{baseUrl}}"
					],
					"path": [
						"booking",
						"58477"
					]
				}
			},
			"response": []
		},
		{
			"name": "PartialUpdate",
			"event": [
				{
					"listen": "test",
					"script": {
						"exec": [
							"pm.test(\"Status code is 200\", function () {\r",
							"    pm.response.to.have.status(200);\r",
							"});"
						],
						"type": "text/javascript"
					}
				}
			],
			"request": {
				"method": "PATCH",
				"header": [
					{
						"key": "Content-Type",
						"value": "application/json"
					},
					{
						"key": "Accept",
						"value": "application/json"
					},
					{
						"key": "Cookie",
						"value": "token=3671b1b2776459f"
					}
				],
				"body": {
					"mode": "raw",
					"raw": "{\n    \"firstname\" : \"Rabbii\"\n}"
				},
				"url": {
					"raw": "{{baseUrl}}/booking/56666",
					"host": [
						"{{baseUrl}}"
					],
					"path": [
						"booking",
						"56666"
					]
				}
			},
			"response": []
		},
		{
			"name": "Delete",
			"event": [
				{
					"listen": "test",
					"script": {
						"exec": [
							"pm.test(\"Status code is 200\", function () {\r",
							"    pm.response.to.have.status(200);\r",
							"});"
						],
						"type": "text/javascript"
					}
				}
			],
			"request": {
				"method": "DELETE",
				"header": [
					{
						"key": "Content-Type",
						"value": "application/json"
					},
					{
						"key": "Cookie",
						"value": "token=3671b1b2776459f"
					}
				],
				"url": {
					"raw": "{{baseUrl}}/booking/83395",
					"host": [
						"{{baseUrl}}"
					],
					"path": [
						"booking",
						"83395"
					]
				}
			},
			"response": []
		}
	]
}
