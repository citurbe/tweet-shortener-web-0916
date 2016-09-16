require 'pry'
# Write your code here.
def dictionary
dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
dictionary
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  output_array = []
  tweet_array.each do |word|

    if dictionary.keys.include?(word.downcase)
      output_array << dictionary[word.downcase]
    else
      output_array << word

    end
  end
  output_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      return word_substituter(tweet)
    else
      return tweet
    end

end


def shortened_tweet_truncator(tweet)
  return tweet if tweet.length <= 140
  short_tweet = word_substituter(tweet)
  return short_tweet if short_tweet.length <= 140
  return short_tweet[0..136] + "..."
end
