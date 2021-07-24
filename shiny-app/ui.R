# ui.R
# Student:  Roxana Trejos Ramirez
# Date: 06-JANL-2021
# Description: Peer-graded Assignment: Final Project Submission

library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)
library(stringi)
library(stringr)

shinyUI(
    navbarPage("PREDICTION OF THE NEXT WORD by Roxana Trejos Ramirez ~ Costa Rica",
               theme = shinytheme("spacelab"),
               tabPanel("Home",
                        fluidPage(
                            titlePanel("Home"),
                            sidebarLayout(
                                sidebarPanel(
                                    textInput("userInput",
                                              "Word or Phrase to predict:",
                                              value =  "",
                                              placeholder = "Enter text here"),
                                    br(),
                                    sliderInput("numPredictions", "Number of Predictions:",
                                                value = 1.0, min = 1.0, max = 3.0, step = 1.0)
                                ),
                                mainPanel(
                                    h4("Input text"),
                                    verbatimTextOutput("userSentence"),
                                    br(),
                                    h4("Predicted words"),
                                    verbatimTextOutput("prediction1"),
                                    verbatimTextOutput("prediction2"),
                                    verbatimTextOutput("prediction3")
                                )
                            )
                        )
               ),
               tabPanel("About",
                        h3("About Next Word Predict"),
                        br(),
                        div("Next Word Predict is a Shiny app that uses a text
                            prediction algorithm to predict the next word(s)
                            based on text entered by a user.",
                            br(),
                            br(),
                            "Next Word Prediction or what is also called Language 
                            Modeling is the task of predicting what word comes next. 
                            It is one of the fundamental tasks of NLP and has many
                            applications. You might be using it daily when you write 
                            texts or emails without realizing it",
                            br(),
                            br(),
                            "The predicted next word will be shown when the app
                            detects that you have finished typing one or more
                            words. When entering text, please allow a few
                            seconds for the output to appear.",
                            br(),
                            br(),
                            "Use the slider tool to select up to three next
                            word predictions. The top prediction will be
                            shown first followed by the second and third likely
                            next words.",
                            br(),
                            br(),
                            "The source code for this application can be found
                            on GitHub:",
                            br(),
                            br(),
                            img(src = "github.png"),
                            a(target = "_blank", href = "https://github.com/roxtredev/dscfpfp/tree/main/shiny-app",
                            "Next Word Predict")),
                        br(),
                        h3("About Me"),
                        br(),
                        div("My name is Roxana Trejos.  Project manager for Information Technology
                            Systems with 15 years of professional experience in planning and managing 
                            the understanding of customer requirements, designing, negotiating, costing, 
                            and materializing projects for different industries (Digital Marketing, 
                            Recruitment, Logistics, and Finance). My colleagues would describe me as
                            someone with strong people skills, connectedness, well organized, strong 
                            builder trust and leadership. I'm seeking for opportunities that will allow
                            me to develop technologies that enable and promote the digital transformation. 
                            As a project manager, my specific fields of interest include digital marketing, data science, and fintech. ",
                            br(),
                            br(),
                            img(src = "linkedin.png"),
                            a(target = "_blank", href = "https://www.linkedin.com/in/roxana-trejos/", "Here my linkedin"),
                            br(),
                            br()
                            )
               )
    )
)
