# sandbox_telemetry_parse — 2026-10-13 13:37:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1111548 lines=2851
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2191 |
| `chrome_profile_sample` | 652 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2191} |
| `chromeGpuPssKb` | {'int': 2191} |
| `chromeOtherPssKb` | {'int': 2191} |
| `chromeProcesses` | {'int': 2191} |
| `chromeProfiles` | {'int': 2191} |
| `chromeRendererMaxPssKb` | {'int': 2191} |
| `chromeRendererPssKb` | {'int': 2191} |
| `chromeRenderers` | {'int': 2191} |
| `chromeTabs` | {'int': 2191} |
| `chromeTabsProbedProfiles` | {'int': 2191} |
| `chromeUtilityPssKb` | {'int': 2191} |
| `desktopPssKb` | {'int': 2191} |
| `hostPssKb` | {'int': 2191} |
| `kind` | {'str': 2191} |
| `memAvailableKb` | {'int': 2191} |
| `memTotalKb` | {'int': 2191} |
| `otherPssKb` | {'int': 2191} |
| `processes` | {'int': 2191} |
| `pssFallbackProcesses` | {'int': 2191} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 651} |
| `display` | {'int': 652} |
| `kind` | {'str': 652} |
| `processes` | {'int': 652} |
| `pssKb` | {'int': 652} |
| `rendererMaxPssKb` | {'int': 652} |
| `renderers` | {'int': 652} |
| `tabs` | {'int': 652} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
