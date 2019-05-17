# key
# "hello" becomes 'hi'
# "to, two, too" become '2' 
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@" 
# "and" becomes "&"
def word_substituter(sentence)

    # array of the words in our sentence
    sentence_array = sentence.split(" ")

    # new sentence array
    new_arr = []

    # iterate through the sentence array
    sentence_array.each do |word|
        # based on the word, push it's substitute into the new array
        if word == "hello"
            new_arr.push("hi")
        elsif word == "to" || word == "two" || word == "too"
            new_arr.push("2")
        elsif word == "for" || word == "four" || word == "For"
            new_arr.push("4")
        elsif word == "be"
            new_arr.push("b")
        elsif word == "you"
            new_arr.push("u")
        elsif word == "at"
            new_arr.push("@")
        elsif word == "and"
            new_arr.push("&")
        else
            new_arr.push(word)
        end

    end
# Join the array into a string, with spaces in between each break
new_sentence = new_arr.join(" ")
new_sentence
end


def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
        puts word_substituter(tweet)
    end
end


def selective_tweet_shortener(tweet)
    if tweet.length > 140 
        word_substituter(tweet)
    else
        tweet
    end
end


def shortened_tweet_truncator(tweet)
    selective_tweet_shortener(tweet)
    if tweet.length > 140 
        tweet[0..139]
    else
        tweet
    end
end