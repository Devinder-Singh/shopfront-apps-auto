#  Copyright (c) 16-11-2020 Muhammad Valodia
from random import Random
import copy

class CreditCardGen():
	def __init__(self):
		"""terst"""
			
	visaPrefixList = [
			['4', '5', '3', '9'],
			['4', '5', '5', '6'],
			['4', '9', '1', '6'],
			['4', '5', '3', '2'],
			['4', '9', '2', '9'],
			['4', '0', '2', '4', '0', '0', '7', '1'],
			['4', '4', '8', '6'],
			['4', '7', '1', '6'],
			['4']]

	mastercardPrefixList = [
			['5', '1'], ['5', '2'], ['5', '3'], ['5', '4'], ['5', '5']]

	amexPrefixList = [['3', '4'], ['3', '7']]
	
	generator = Random()
	generator.seed()        # Seed from current time

	def get_credit_card(self,type):
		"""
        Get a random 16 digit card number
		 Examples:
        | ${card}= | Get Credit Card | Visa |
		| ${card}= | Get Credit Card | Master |
		| ${card}= | Get Credit Card | Amex |
        """ 
		number = 0
		if type == 'Visa':
			number = self._credit_card_number(self.generator, self.visaPrefixList, 16)
		elif type == 'Master':
			number = self._credit_card_number(self.generator, self.mastercardPrefixList, 16)
		elif type == 'Amex':
			number = self._credit_card_number(self.generator, self.amexPrefixList, 16)
		return number
	
	def _completed_number(self, prefix, length):
		"""
		'prefix' is the start of the CC number as a string, any number of digits.
		'length' is the length of the CC number to generate. Typically 13 or 16
		"""
		ccnumber = prefix
		# generate digits
		while len(ccnumber) < (length - 1):
			digit = str(self.generator.choice(range(0, 10)))
			ccnumber.append(digit)
		# Calculate sum
		sum = 0
		pos = 0
		reversedCCnumber = []
		reversedCCnumber.extend(ccnumber)
		reversedCCnumber.reverse()
		while pos < length - 1:
			odd = int(reversedCCnumber[pos]) * 2
			if odd > 9:
				odd -= 9
			sum += odd
			if pos != (length - 2):
				sum += int(reversedCCnumber[pos + 1])
			pos += 2
			
		# Calculate check digit
		
		checkdigit =  self._get_check_digit(ccnumber)
		if checkdigit > 9:
			checkdigit = 0
		ccnumber.append(str(checkdigit))
		return ''.join(ccnumber)
		
	def _get_check_digit(self,nums):
			"""
			Make the current generated list pass the Luhn check by checking and adding
			the last digit appropriately bia calculating the check sum
			"""
			check_sum = 0
			
			#is_even = True if (len(nums) + 1 % 2) == 0 else False
			
			"""
			Reason for this check offset is to figure out whther the final list is going
			to be even or odd which will affect calculating the check_sum.
			This is mainly also to avoid reversing the list back and forth which is specified
			on the Luhn algorithm.
			"""
			check_offset = (len(nums) + 1) % 2
			for i, n in enumerate(nums):
				if (i + check_offset) % 2 == 0:
					n2 = int(n)*2
					if n2 > 9:
						check_sum += n2 -9 
					else:
						check_sum += n2
				else:
					check_sum += int(n)
			return 10 - (check_sum % 10)
	def _credit_card_number(self, rnd, prefixList, length):
		ccnumber = copy.copy(rnd.choice(prefixList))
		result = self._completed_number(ccnumber, length)
		return result