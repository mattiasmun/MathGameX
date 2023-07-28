/* application.vala
 *
 * Copyright 2023 Mattias Münster
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.	If not, see <http://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

namespace Mathgamex {

	// This file defines the Mathgamex.Application class, which is the main
	// application class for the MathGameX application.

	public class Application : Adw.Application {

		// The Mathgamex.Application class inherits from the Adw.Application class,
		// which provides a number of features for GNOME applications.

		public Application () {
			// The Mathgamex.Application class constructor takes no arguments.
			// It sets the application's ID and flags.
			Object (application_id: "math.game.x", flags: ApplicationFlags.DEFAULT_FLAGS);
		}

		// The construct() method creates a list of action entries and adds them
		// to the application. It also sets the accelerator for the quit action.

		construct {
			ActionEntry[] action_entries = {
				{ "about", this.on_about_action },
				{ "preferences", this.on_preferences_action },
				{ "quit", this.quit }
			};
			this.add_action_entries (action_entries, this);
			this.set_accels_for_action ("app.quit", {"<primary>q"});
		}

		// The activate() method is called when the application is activated.
		// It creates a new Mathgamex.Window object if there is no active window.

		public override void activate () {
			base.activate ();
			var win = this.active_window;
			if (win == null) {
				win = new Mathgamex.Window (this);
			}
			win.present ();
		}

		// The on_about_action() method is called when the about action is activated.
		// It creates a new Adw.AboutWindow object and shows it.

		private void on_about_action () {
			string[] developers = { "Mattias Münster" };
			var about = new Adw.AboutWindow () {
				transient_for = this.active_window,
				application_name = "mathgamex",
				application_icon = "math.game.x",
				developer_name = "Mattias Münster",
				version = "0.1.0",
				developers = developers,
				copyright = "© 2023 Mattias Münster",
			};

			about.present ();
		}

		// The on_preferences_action() method is called when the preferences action
		// is activated. It prints a message to the console.

		private void on_preferences_action () {
			message ("app.preferences action activated");
		}
	}
}
