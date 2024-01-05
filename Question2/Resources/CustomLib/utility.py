from selenium import webdriver
from robot.libraries.BuiltIn import BuiltIn

bi = BuiltIn()

def enter_text_key_press(element,value):
    bi.run_keyword('Input Text', element, value)
    bi.run_keyword('Press Key', element, '\\\\13')

def get_element_text(element):
    driver = webdriver.Chrome("C:/webdriver/chromedriver.exe")
    elements= driver.find_element_by_id(element)
    element_tag_text = elements.get_attribute("innerHTML")
    return element_tag_text