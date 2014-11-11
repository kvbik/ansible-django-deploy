=====================
ansible-django-deploy
=====================

easy deploy of django app with ansible, yet another approach based on my current layout

this is not taking care of provisioning at all, it is just about building virtualenv on one box
and distributing to already set up loadbalancers and web workers (with celery and gunicorn)

where to start
==============

edit ``deploy/hosts`` file to match your boxes, note that you have to have one build box in group ``infra``

now take a look at ``deploy/bin/deploy.sh`` which is just a convenient wrapper around ``deploy/deploy.yml`` playbook.

