<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'wp_db' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'wp_user' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '123456' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '&W32X_*6LX@vYUb]Kfk_2zRVyslX&y8BA]aoW3{iB7.&5y%g vW!EIQZfqVHoepM' );
define( 'SECURE_AUTH_KEY',  '$erW%|uu)N;B+sSgKA5T8DX*| >;nY,1-KfyVMm).A?2gYLO48`?x]7o@S*0!zj*' );
define( 'LOGGED_IN_KEY',    '?z_F{m,|d2%,0SoE-n(^SP]<}:Drn!lKY4s-b+X6vugL2}5S3v/(6P3|=4Y@+v<<' );
define( 'NONCE_KEY',        '>#UZ$^=.HI6sc|psFXsJdREHIdf]EGJh#R5waM:aZ}tC@vE,~`.s;xpiTO``v{+d' );
define( 'AUTH_SALT',        '776>^8Qet(Ir[9>nJTn}=M1P4M7K0;BpdXadDaAcD}5k)og)a-7QN6F{fWwQ!{u{' );
define( 'SECURE_AUTH_SALT', '7$i3Xwc+/.!4.21{i6}N_)yMfjNIy9Y|$SjY#}@,Z}h#-xZTN6Jpf({P2f2=q_P|' );
define( 'LOGGED_IN_SALT',   'f{zj?Y#:T?=(=^H}@pW`X5/-o:4T~6u1XWjd-h[m%F,HN0AP #m^#2Klml$ND_^[' );
define( 'NONCE_SALT',       'elqd1YxT;C0o/FJM;_m4#pr1mQ|?/JXO `u;z)fnWF%0:inME6Nhvvp6Af4027C,' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
