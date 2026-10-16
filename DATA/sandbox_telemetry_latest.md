# sandbox_telemetry_parse — 2026-10-16 09:57:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=337461 lines=1261
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 828 |
| `memory_sample` | 424 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 424} |
| `chromeGpuPssKb` | {'int': 424} |
| `chromeOtherPssKb` | {'int': 424} |
| `chromeProcesses` | {'int': 424} |
| `chromeProfiles` | {'int': 424} |
| `chromeRendererMaxPssKb` | {'int': 424} |
| `chromeRendererPssKb` | {'int': 424} |
| `chromeRenderers` | {'int': 424} |
| `chromeTabs` | {'int': 424} |
| `chromeTabsProbedProfiles` | {'int': 424} |
| `chromeUtilityPssKb` | {'int': 424} |
| `desktopPssKb` | {'int': 424} |
| `hostPssKb` | {'int': 424} |
| `kind` | {'str': 424} |
| `memAvailableKb` | {'int': 424} |
| `memTotalKb` | {'int': 424} |
| `otherPssKb` | {'int': 424} |
| `processes` | {'int': 424} |
| `pssFallbackProcesses` | {'int': 424} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 825} |
| `display` | {'int': 828} |
| `kind` | {'str': 828} |
| `processes` | {'int': 828} |
| `pssKb` | {'int': 828} |
| `rendererMaxPssKb` | {'int': 828} |
| `renderers` | {'int': 828} |
| `tabs` | {'int': 827} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
