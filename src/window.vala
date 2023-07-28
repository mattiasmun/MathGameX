/* window.vala
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

// This file defines the Mathgamex.Window class, which is a subclass of
// the Adw.ApplicationWindow class.

namespace Mathgamex {

	// The [GtkTemplate] annotation tells the GTK+ .ui builder to
	// load the window's UI definition from the file `window.ui`.

	[GtkTemplate (ui = "/math/game/x/window.ui")]
	public class Window : Adw.ApplicationWindow {

		// The [GtkChild] annotation tells the GTK+ .ui builder to
		// create a label widget and add it to the window.

		[GtkChild]
		private unowned Gtk.Label label;

		// The constructor takes a reference to the application object
		// as its argument.

		public Window (Gtk.Application app) {
			// The Object() constructor calls the base class constructor
			// and sets the application object.
			Object (application: app);

			// This line prints the name of the label widget to the console.

			stdout.puts (label.get_name () + "\n");
		}
	}
}
