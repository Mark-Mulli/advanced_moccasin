# pragma version 0.4.1

"""
@licence MIT
@author Mark
@title Decentralized Stablecoin
@dev Follows the ERC20 token standard

"""

from snekmate.tokens import ERC20
from snekmate.auth import ownable as ow

initializes: ow
initializes: erc20[ownable := ow]

exports: (
    erc20.IERC20,
    erc20.burn_from,
    erc20.mint,
    erc20.set_minter,
    ow.owner,
    ow.transfer_ownership
)

NAME: constant(String[25]) = "Decentralized Stable Coin"
SYMBOL: constant(String[5]) = "DSC"
DECIMALS: constant(uint8) = 18
EIP_712_VERSION: constant(String[20]) = "1.0.0"

# ------------------------------------------------------------------
#                            FUNCTIONS
# ------------------------------------------------------------------

@deploy
def __init__():
    ow.__init__()
    erc20.__init__(NAME, SYMBOL, DECIMALS, EIP_712_VERSION)
    
