# sandbox_telemetry_parse — 2026-10-16 14:49:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=548518 lines=2050
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1354 |
| `memory_sample` | 687 |
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
| `chromeBrowserPssKb` | {'int': 687} |
| `chromeGpuPssKb` | {'int': 687} |
| `chromeOtherPssKb` | {'int': 687} |
| `chromeProcesses` | {'int': 687} |
| `chromeProfiles` | {'int': 687} |
| `chromeRendererMaxPssKb` | {'int': 687} |
| `chromeRendererPssKb` | {'int': 687} |
| `chromeRenderers` | {'int': 687} |
| `chromeTabs` | {'int': 687} |
| `chromeTabsProbedProfiles` | {'int': 687} |
| `chromeUtilityPssKb` | {'int': 687} |
| `desktopPssKb` | {'int': 687} |
| `hostPssKb` | {'int': 687} |
| `kind` | {'str': 687} |
| `memAvailableKb` | {'int': 687} |
| `memTotalKb` | {'int': 687} |
| `otherPssKb` | {'int': 687} |
| `processes` | {'int': 687} |
| `pssFallbackProcesses` | {'int': 687} |

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
| `cpuMillicores` | {'int': 1351} |
| `display` | {'int': 1354} |
| `kind` | {'str': 1354} |
| `processes` | {'int': 1354} |
| `pssKb` | {'int': 1354} |
| `rendererMaxPssKb` | {'int': 1354} |
| `renderers` | {'int': 1354} |
| `tabs` | {'int': 1353} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
