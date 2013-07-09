# coding: utf-8
#
module Romaji
  module StringExtension
    def normalize
      Romaji.normalize(self)
    end

    def normalize!
      self.replace(self.normalize)
    end

    def kana(options = {})
      Romaji.romaji2kana(self.normalize, options)
    end

    def kana!(options = {})
      self.replace(self.kana(options))
    end

    def romaji
      Romaji.kana2romaji(self.normalize)
    end

    def romaji!
      self.replace(self.romaji)
    end
  end
end

