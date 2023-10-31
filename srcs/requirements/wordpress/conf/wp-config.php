<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'mseong' );

/** Database password */
define( 'DB_PASSWORD', 'lameass' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', 'utf8_general_ci' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'yefiVk.LSqZQG%gyU-lP^$R?CS`+L_^wYwKum8rFNq.*w!^!i>R 0n!7tcTxno,I' );
define( 'SECURE_AUTH_KEY',   '.Msu,aAe9nA&Z5I?5[)0:9PQ*G&c1`[>;+f=ZgsK<tJLZ6PW a~.)6:G]1hE9x-U' );
define( 'LOGGED_IN_KEY',     'VTup6$^pv>*p[`7x$bRe#%qbPU/i8%>a>*qs`mkP3yTL~8Ss2*p+u]l[nEB^I*Zy' );
define( 'NONCE_KEY',         '=)ct5T%j)KIoRn&PU5]cU#|L=oq]P+]&;V=|q GkCm3N5k)?BXs@Tz*{WAUCd:Na' );
define( 'AUTH_SALT',         '%SKRXMx.jV9EBO`$=!=G-(o_4v!8$-JY0b^By)l<{@({TC?`^A|_U<l ->H=[Z|d' );
define( 'SECURE_AUTH_SALT',  '@DX0pH~j?SHzi_77Kvq@s[B)j;r(oofm#+/PJ#&_o47f,.*GR@k3`ksp=1^PP&e;' );
define( 'LOGGED_IN_SALT',    '#]dZdx/HX*,g,=.Pzh]g2$]!a!{<r](z_G%w(xG8r$>J>`=jlo4(=KZ7XK*e,F<3' );
define( 'NONCE_SALT',        '2[:!6Yn)>qk$[ }N8;LDc<[ZX<`}.wZ%uk3289@V,],Ha5uNMp|iTvMN^?(kbS|,' );
define( 'WP_CACHE_KEY_SALT', 'L$_-.8gIYNzl;DjgQ1EC$y=}zEm]cEm*Tmo` 5i)H`)$?%t~>3|CfFYMDw9{9+|$' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
