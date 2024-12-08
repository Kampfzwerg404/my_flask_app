   import requests

   def test_home():
       response = requests.get('http://localhost:5000/')
       assert response.status_code == 200
       assert response.json() == {"message": "Welcome to my Flask API!"}

   def test_get_data():
       response = requests.get('http://localhost:5000/api/data')
       assert response.status_code == 200
       assert response.json() == {"data": "This is some sample data."}
   
