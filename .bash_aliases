alias m2link='php -f /vagrant/m2ee/dev/tools/build-ee.php -- --command link --ce-source /vagrant/m2 --ee-source /vagrant/m2ee'
alias m2unlink='php -f /vagrant/m2ee/dev/tools/build-ee.php -- --command unlink --ce-source /vagrant/m2 --ee-source /vagrant/m2ee'
alias m2relink='m2unlink;m2link'
alias rein='. reinstall.sh'
alias installm2='bin/magento setup:install --backend-frontname="backend" --db-host="127.0.0.1" --db-name="magento" --db-user="root" --db-password="vagrant" --base-url="http://m2.dev/" --admin-user="admin" --admin-password="password1" --admin-firstname="FN" --admin-lastname="LN" --admin-email="fLN@magento.com" --cleanup-database'
alias rmp='rm -rf pub/static/*'
alias rmv='rm -rf var/*'
alias rms='rm -rf /var/lib/php5/sessions/*'
alias rma='rmv; rms; rmp;
alias mysqlr='mysql -u root -p'
alias rma='rmv;rms;rmp'
alias mag='cd /vagrant/m2'
alias gs='git status'
alias ghr='git reset --hard HEAD'
alias glm='git fetch mainline; git checkout maindev; git pull'
alias cb='git rev-parse --abbrev-ref HEAD'
alias gd='git diff'
