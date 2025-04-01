# E-commerce Website Automated Testing with Robot Framework

## Overview
This project contains automated test cases for an e-commerce website using the Robot Framework. The tests cover essential functionalities such as user authentication, product search, adding items to the cart, and checkout processes.

## Features
- **Automated UI testing** using Robot Framework and SeleniumLibrary
- **Cross-browser testing** (Chrome, Firefox, etc.)
- **Data-driven testing support**
- **Test execution and structured reports**
- **Keyword-driven test approach for readability and maintainability**

## Technologies Used
- Robot Framework
- SeleniumLibrary
- Python
- Git & GitHub

## Installation
To set up and run the test suite locally, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/kingsleyuhons/Test_Automation_Robotframework-with-Python_Ecommerce.git
   cd Test_Automation_Robotframework-with-Python_Ecommerce
   ```
2. **Create a virtual environment (optional but recommended):**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows use `venv\Scripts\activate`
   ```
3. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```
4. **Run the test cases:**
   ```bash
   robot -d results tests/
   ```

## Test Cases Implemented
- User login and logout functionality
- Product search functionality
- Adding products to the cart
- Checkout process validation
- Page navigation and responsiveness

## Running Tests
To execute tests on a specific browser, update the `browser` argument in the test suite:
```bash
robot --variable BROWSER:firefox -d results tests/
```
For headless execution:
```bash
robot --variable HEADLESS:true -d results tests/
```

## Contribution
Feel free to fork the repository and submit pull requests. Any improvements and additional test cases are welcome!

## License
This project is licensed under the MIT License.

## Author
Kingsley Uhonmhoibhi  
[GitHub Profile](https://github.com/kingsleyuhons)
