library(shiny)
library(shinyjs)
library(readr)
library(magrittr)
library(dplyr)
library(xgboost)
library(DT)
library(pROC)
library(rpart)
library(rpart.plot)
library(caret)
library(e1071)
library(stringi)

source("C:\\Users\\ASUS\\Documents\\CreditCard_ShinyApp\\CreditCardFraud_Detection\\helpers.R")

#Set maximum file upload limit
options(shiny.maxRequestSize = 200 * 1024 ^ 2)

kaggle_data <- read_csv(file.path("C:\\Users\\ASUS\\Documents\\CreditCard_ShinyApp\\CreditCardFraud_Detection\\creditcard.csv"), col_names = T)
colnames(kaggle_data) <- stringi::stri_trans_tolower(colnames(kaggle_data))

rows <- nrow(kaggle_data)
kaggle_data$id <- 1:rows

#Set the number of pages on the model building tab
NUM_PAGES <- 3
