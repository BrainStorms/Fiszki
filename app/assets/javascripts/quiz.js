if (typeof jQuery === 'undefined') { throw new Error('App\'s JavaScript requires jQuery') }

/* ========================================================================
 * Copyright 2014 Brain Storms
 * ======================================================================== */

+function($) {
    /**

     Example usage:

     $(document).ready(function() {
			quizJSON = [{"question":"2+2", "answer":"4"}, {"question":"3*17", "answer":"51"}];
			var quiz = new FlashcardsQuiz(quizJSON, $('#quizContainer'), $("#question"), $("#answer"), $("#true"), $("#false"));
			quiz.show();
		});
     */

    FlashcardsQuiz = function(quizJSON, quizContainer, questionContainer, answerContainer, trueButton, falseButton) {

        this.quizJSON = quizJSON;
        this.quizContainer = quizContainer;
        this.questionContainer = questionContainer;
        this.answerContainer = answerContainer;
        this.trueButton = trueButton;
        this.falseButton = falseButton;

        this.index = 0;
        this.goodAnswersCounter = 0;
        this.badAnswerCounter = 0;

        this.show = function() {
            if(this.index < this.quizJSON.length) {
                this.questionContainer.html(quizJSON[this.index].question)
                this.answerContainer.html(quizJSON[this.index].answer)
            } else {
                percentGood = (100 * this.goodAnswersCounter) / quizJSON.length;
                percentBad = 100 - percentGood;
                quizContainer.html(
                        '<h3>Udzieliłeś ' + Math.floor(percentGood) + '% poprawnych odpowiedzi!</h3>' +
                        '<div class="progress">' +
                        '<div class="progress-bar progress-bar-success" style="width: ' + percentGood + '%">' +
                        '</div>' +
                        '<div class="progress-bar progress-bar-danger" style="width: ' + percentBad + '%">' +
                        '</div>' +
                        '</div>'
                );
            }
        }

        this.iKnow = function(quiz) {
            this.goodAnswersCounter++;
            this.index++;
            this.show();
        }

        this.iDontKnow = function() {
            this.badAnswerCounter++;
            this.index++;
            this.show();
        }

        trueButton.click(this.iKnow.bind(this));
        falseButton.click(this.iDontKnow.bind(this));
    }
}(jQuery);
