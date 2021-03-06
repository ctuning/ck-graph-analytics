#
# Collective Knowledge (individual environment - setup)
#
# See CK LICENSE.txt for licensing details
#
# Developer: Grigori Fursin, cTuning foundation/dividiti
#

import os

##############################################################################
# setup environment setup

def setup(i):
    """
    Input:  {
              cfg              - meta of this soft entry
              self_cfg         - meta of module soft
              ck_kernel        - import CK kernel module (to reuse functions)

              host_os_uoa      - host OS UOA
              host_os_uid      - host OS UID
              host_os_dict     - host OS meta

              target_os_uoa    - target OS UOA
              target_os_uid    - target OS UID
              target_os_dict   - target OS meta

              target_device_id - target device ID (if via ADB)

              tags             - list of tags used to search this entry

              env              - updated environment vars from meta
              customize        - updated customize vars from meta

              deps             - resolved dependencies for this soft

              interactive      - if 'yes', can ask questions, otherwise quiet
            }

    Output: {
              return       - return code =  0, if successful
                                         >  0, if error
              (error)      - error text if return > 0

              bat          - prepared string for bat file
            }

    """

    import os

    # Get variables
    ck=i['ck_kernel']
    s=''

    iv=i.get('interactive','')

    cus=i.get('customize',{})
    fp=cus.get('full_path','')

    hosd=i['host_os_dict']
    tosd=i['target_os_dict']

    sdirs=hosd.get('dir_sep','')

    # Check platform
    hplat=hosd.get('ck_name','')

    hproc=hosd.get('processor','')
    tproc=tosd.get('processor','')

    remote=tosd.get('remote','')
    tbits=tosd.get('bits','')

    env=i['env']

    pn=os.path.basename(fp)
    pi=os.path.dirname(fp)

    ep=cus['env_prefix']
    ienv=cus['install_env']
    env[ep]=pi
    env[ep+'_FULL_NAME']=fp
    env[ep+'_NAME']=pn
    env[ep+'_GRAPH_NAME']=ienv['GRAPH_NAME']
    env[ep+'_NUM_OF_VERTICES']=ienv['NUM_OF_VERTICES']
    env[ep+'_MAX_VERTEX_ID']=ienv['MAX_VERTEX_ID']

    print(env)
    return {'return':0, 'bat':s}

