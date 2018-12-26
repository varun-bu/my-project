def _my_custom_grain():
    my_grain = {'System': 'mispl-wkstn-66', 'User': 'mis'}
    return my_grain

def main():
    # initialize a grains dictionary
    grains = {}
    grains['system_user_info'] = _my_custom_grain()
    return grains
print(_my_custom_grain())