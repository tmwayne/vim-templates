## LOGGING
##############################

import logging
logger = logging.getLogger(__name__)

# Create handler
handler = logging.FileHandler('error.log')
handler.setLevel(logging.ERROR)

# Create formatter
formatter = logging.Formatter(
'%(asctime)s - %(name)s - %(levelname)s - %(message)s')
handler.setFormatter(formatter)

# Add handler to logger
logger.addHandler(handler)

# logging.error('This is an error')
