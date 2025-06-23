#pragma version 0.4.1

"""
@license MIT
@title Puppy NFT
"""


from snekmate.tokens import erc721
from snekmate.auth import ownable as ow

initializes: ow
initializes: erc721[ownable := ow]

exports: erc721.__interface__

# ------------------------------------------------------------------
#                         STATE VARIABLES
# ------------------------------------------------------------------

NAME: constant(String[25]) = "Puppy NFT"
SYMBOL: constant(String[5]) = "PUPPY"
BASE_URI: constant(String[80]) = "ipfs://"
EIP_712_VERSION: constant(String[1]) = "1"

# ------------------------------------------------------------------
#                            FUNCTIONS
# ------------------------------------------------------------------

@deploy
def __init__():
    ow.__init__()
    erc721.__init__(NAME, SYMBOL, BASE_URI, NAME, EIP_712_VERSION)

