# sandbox_telemetry_parse — 2026-10-13 22:34:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1264175 lines=3329
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2430 |
| `chrome_profile_sample` | 891 |
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
| `chromeBrowserPssKb` | {'int': 2430} |
| `chromeGpuPssKb` | {'int': 2430} |
| `chromeOtherPssKb` | {'int': 2430} |
| `chromeProcesses` | {'int': 2430} |
| `chromeProfiles` | {'int': 2430} |
| `chromeRendererMaxPssKb` | {'int': 2430} |
| `chromeRendererPssKb` | {'int': 2430} |
| `chromeRenderers` | {'int': 2430} |
| `chromeTabs` | {'int': 2430} |
| `chromeTabsProbedProfiles` | {'int': 2430} |
| `chromeUtilityPssKb` | {'int': 2430} |
| `desktopPssKb` | {'int': 2430} |
| `hostPssKb` | {'int': 2430} |
| `kind` | {'str': 2430} |
| `memAvailableKb` | {'int': 2430} |
| `memTotalKb` | {'int': 2430} |
| `otherPssKb` | {'int': 2430} |
| `processes` | {'int': 2430} |
| `pssFallbackProcesses` | {'int': 2430} |

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
| `cpuMillicores` | {'int': 890} |
| `display` | {'int': 891} |
| `kind` | {'str': 891} |
| `processes` | {'int': 891} |
| `pssKb` | {'int': 891} |
| `rendererMaxPssKb` | {'int': 891} |
| `renderers` | {'int': 891} |
| `tabs` | {'int': 891} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
