alias m2link='php -f m2ee/dev/tools/build-ee.php -- --command link --ce-source /vagrant/m2 --ee-source /vagrant/m2ee'
alias m2unlink='php -f m2ee/dev/tools/build-ee.php -- --command unlink --ce-source /vagrant/m2 --ee-source /vagrant/m2ee'
alias m2relink='m2unlink;m2link'
alias rein='. reinstall.sh'
alias rmv='rm -rf var/*'
alias rmp='rm -rf pub/static/*'
alias mysqlr='mysql -u root -p'
