/*
 * Copyright (c) 2007 Henrique Pinto <henrique.pinto@kdemail.net>
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES ( INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION ) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * ( INCLUDING NEGLIGENCE OR OTHERWISE ) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef ARCHIVEINTERFACE_H
#define ARCHIVEINTERFACE_H

#include <QObject>
#include <QStringList>
#include <QString>

#include "archive.h"
#include "queries.h"
#include "kerfuffle_export.h"

#include <kio/job.h>
#include <kio/jobclasses.h>
#include <kfileitem.h>

namespace Kerfuffle
{
	class ArchiveObserver;

	class KERFUFFLE_EXPORT ReadOnlyArchiveInterface: public QObject
	{
		Q_OBJECT
		public:
			explicit ReadOnlyArchiveInterface( const QString & filename, QObject *parent = 0 );
			virtual ~ReadOnlyArchiveInterface();

			const QString& filename() const;
			virtual bool isReadOnly() const;

			void KDE_NO_EXPORT registerObserver( ArchiveObserver *observer );
			void KDE_NO_EXPORT removeObserver( ArchiveObserver *observer );

			virtual bool open();
			virtual bool list() = 0;
			virtual bool copyFiles( const QList<QVariant> & files, const QString & destinationDirectory, Archive::CopyFlags flags ) = 0;
			void setPassword(QString password);

		protected:
			void error( const QString & message, const QString & details = QString() );
			void entry( const ArchiveEntry & archiveEntry );
			void progress( double );
			void info( const QString& info);
			void entryRemoved( const QString& path );
			const QString& password() const;
			QString findCommonBase(const QVariantList& files);
			QString findCommonBase(const QStringList& files);
			void expandDirectories( QStringList &files );
			KJob* listRecursiveTo(QString folder, QStringList& list);

		signals:
			void userQuery( Query* );


		private:
			QList<ArchiveObserver*> m_observers;
			QString m_filename;
			QString m_password;
	};

	//used by the expandDirectories function
	class RecursiveListHelper : public QObject
	{
		Q_OBJECT

		public:
			RecursiveListHelper(QString listDir) :
				QObject(NULL), m_listDir(listDir) {}
			QList<KFileItem> results;
			QString m_listDir;

		public slots:
			void entries (KIO::Job *job, const KIO::UDSEntryList &list);

	};

	class KERFUFFLE_EXPORT ReadWriteArchiveInterface: public ReadOnlyArchiveInterface
	{
		Q_OBJECT
		public:
			explicit ReadWriteArchiveInterface( const QString & filename, QObject *parent = 0 );
			virtual ~ReadWriteArchiveInterface();

			virtual bool isReadOnly() const;

			//see archive.h for a list of what the compressionoptions might
			//contain
			virtual bool addFiles( const QStringList & files, const CompressionOptions& options ) = 0;
			virtual bool deleteFiles( const QList<QVariant> & files ) = 0;
	};

} // namespace Kerfuffle

#endif // ARCHIVEINTERFACE_H
