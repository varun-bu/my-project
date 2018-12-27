import psutil

def get_fstype():

    grains_dict = {} #initializing grains dictionary
    for disk_info in psutil.disk_partitions():

        grains_dict[disk_info.mountpoint] = disk_info.fstype
    return {'filesystem_type': grains_dict}

print(get_fstype())