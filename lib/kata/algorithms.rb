require "kata/algorithms/version"

module Kata
  module Algorithms
    # ADDITION OF INTEGERS WHEN REPRESENTED AS STRINGS
    # ================================================
    #
    # E.g. "345" + "7890" = "8235"
    #
    # Inspired by the book "Algorithms In a Nutshell - Chapter 2 - The Mathematics of Algorithms"
    #
    # Assume that we have two integers represented as strings, For example:
    #
    #    a = "2382738"
    #
    # (a.k.a. `a[1] = "8", a[2] = "3", ... , a[7] = "2"`)
    #
    # and
    #
    #    b = "9891829"
    #
    # (a.k.a. `b[1] = "9", b[2] = "2", ..., b[7] = "9"`)
    #
    # Can we calculate their sum, without converting them to integers?
    #
    #    c = c[n+1]...c[1] = "12274567"
    #
    # (a.k.a. `c[1] = "7", c[2] = "6", ..., c[7] = "2", c[8] = "1"`)
    #
    # Or in other words, how one would do this addition on a piece of paper?
    #
    # The primitive operations used in this ADDITION algorithm are as follows:
    #
    #    c[i] = (a[i] + b[i] + carry[i]) mod 10
    #    carry[i+1] = (a[i] + b[i] + carry[i]) >= 10 ? 1 : 0
    #
    # The above algorithm is implemented in this addition. However,
    # there is an optimization, because "mod 10" is an expensive operation.
    # So, we do not use it.
    #
    # Also, we have implemented that so that it can work with operands of
    # different length. So, "a" and 'b" do not have to be of same length.
    #
    # @param a [String] An integer represented as string, e.g. "123412"
    # @param b [String] An integer represented as string, e.g. "3742834"
    # @return [String]  The string representation of a + b, e.g. "3866246"
    #
    def self.addition(a, b)
      a = a.split('').reverse
      b = b.split('').reverse
      carry = 0
      i = 0
      c = ""

      # while I have a digit I process it
      while !a[i].nil? || !b[i].nil?
        result_on_i = a[i].to_i + b[i].to_i + carry  # .to_i on nil works perfect. returns 0
        if result_on_i >= 10
          c = "#{result_on_i - 10}#{c}"
          carry = 1
        else
          c = "#{result_on_i}#{c}"
          carry = 0
        end
        i += 1
      end

      c = "1#{c}" if carry == 1
      c == "" ? "0" : c
    end

    # MULTIPLICATION OF INTEGERS WHEN REPRESENTED AS STRINGS
    # ======================================================
    #
    # E.g. "345" * "7890" = "2722050"
    #
    # Inspired by the book "Algorithms In a Nutshell - Chapter 2 - The Mathematics of Algorithms"
    #
    # Assume that we have two integers represented as strings, For example:
    #
    #    a = "2382738"
    #
    # (a.k.a. `a[1] = "8", a[2] = "3", ... , a[7] = "2"`)
    #
    # and
    #
    #    b = "9891829"
    #
    # (a.k.a. `b[1] = "9", b[2] = "2", ..., b[7] = "9"`)
    #
    # Can we calculate their multiplication, without converting them to integers?
    #
    #    c = c[k]...c[1] = "23569636847802"
    #
    # (a.k.a. `c[1] = "2", c[2] = "0", ..., c[k] = "2"`)
    #
    #
    # This MULTIPLICAITON algorithm works, more or less, as follows:
    #
    #  assume A X B
    #
    # n      scans B from right to left
    # m      scans A from right to left, for each on of the digits of B
    # result holds the intermediate and final results
    #
    # initialize result to "0"
    #
    # for each digit on B starting from least significant to most significant - scan with n
    #   for each digit on A starting from least significant to most significant - scan with m
    #     result is increased by B[n] * A[m] * 10^(n+m)
    #
    # at the end of the iterations, result will hold the correct answer
    #
    # Note that we have not used the native addition operation. We have used the
    # +Algorithms.addition+ to increase the results.
    #
    #
    # @param a [String] An integer represented as string, e.g. "123412"
    # @param b [String] An integer represented as string, e.g. "3742834"
    # @return [String]  The string representation of a + b, e.g. "461910629608"
    #
    def self.multiplication(a, b)
      a = a.split('')
      b = b.split('')
      result = "0"
      (0..b.size-1).step do |n|
        (0..a.size-1).step  do |m|
          result = Kata::Algorithms.addition(result, (b[b.size - 1 - n].to_i * a[a.size - 1 -m].to_i * 10 ** (n + m)).to_s)
        end
      end
      result
    end
  end
end
