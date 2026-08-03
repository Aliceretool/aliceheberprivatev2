type Params = Record<string, never>

export default async function(_req: { params: Params; user: User }) {
  return azureBlobStorageTest.getSignedUrl({
    permissions: 'read',
    blobName: 'CleanShot 2026-07-16 at 10.06.10.jpg',
  })
}
