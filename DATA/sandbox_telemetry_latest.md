# sandbox_telemetry_parse — 2026-10-16 19:28:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=762831 lines=2851
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1888 |
| `memory_sample` | 954 |
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
| `chromeBrowserPssKb` | {'int': 954} |
| `chromeGpuPssKb` | {'int': 954} |
| `chromeOtherPssKb` | {'int': 954} |
| `chromeProcesses` | {'int': 954} |
| `chromeProfiles` | {'int': 954} |
| `chromeRendererMaxPssKb` | {'int': 954} |
| `chromeRendererPssKb` | {'int': 954} |
| `chromeRenderers` | {'int': 954} |
| `chromeTabs` | {'int': 954} |
| `chromeTabsProbedProfiles` | {'int': 954} |
| `chromeUtilityPssKb` | {'int': 954} |
| `desktopPssKb` | {'int': 954} |
| `hostPssKb` | {'int': 954} |
| `kind` | {'str': 954} |
| `memAvailableKb` | {'int': 954} |
| `memTotalKb` | {'int': 954} |
| `otherPssKb` | {'int': 954} |
| `processes` | {'int': 954} |
| `pssFallbackProcesses` | {'int': 954} |

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
| `cpuMillicores` | {'int': 1885} |
| `display` | {'int': 1888} |
| `kind` | {'str': 1888} |
| `processes` | {'int': 1888} |
| `pssKb` | {'int': 1888} |
| `rendererMaxPssKb` | {'int': 1888} |
| `renderers` | {'int': 1888} |
| `tabs` | {'int': 1887} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
