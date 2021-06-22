#  Copyright (c) 16-11-2020 Muhammad Valodia
import os

from TalLibrary.Utils import Utils
from TalLibrary.CreditCardGen import CreditCardGen
from TalLibrary.Hash import Hash
from TalLibrary._javascript import _JavaScriptKeywords
from TalLibrary.Capabilities import Capabilities
from TalLibrary.ApiLib import ApiLib
from requests import api

__version_file_path__ = os.path.join(os.path.dirname(__file__), 'VERSION')
__version__ = open(__version_file_path__, 'r').read().strip()

class TalLibrary(
	Utils,
	CreditCardGen,
	Hash,
	Capabilities,
	_JavaScriptKeywords,
    ApiLib
):
    """
    Tal Library for robot framework

    References:
    None

    Notes:
    None
    """

    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
