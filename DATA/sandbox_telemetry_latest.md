# sandbox_telemetry_parse — 2026-10-16 07:47:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=248337 lines=928
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 606 |
| `memory_sample` | 313 |
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
| `chromeBrowserPssKb` | {'int': 313} |
| `chromeGpuPssKb` | {'int': 313} |
| `chromeOtherPssKb` | {'int': 313} |
| `chromeProcesses` | {'int': 313} |
| `chromeProfiles` | {'int': 313} |
| `chromeRendererMaxPssKb` | {'int': 313} |
| `chromeRendererPssKb` | {'int': 313} |
| `chromeRenderers` | {'int': 313} |
| `chromeTabs` | {'int': 313} |
| `chromeTabsProbedProfiles` | {'int': 313} |
| `chromeUtilityPssKb` | {'int': 313} |
| `desktopPssKb` | {'int': 313} |
| `hostPssKb` | {'int': 313} |
| `kind` | {'str': 313} |
| `memAvailableKb` | {'int': 313} |
| `memTotalKb` | {'int': 313} |
| `otherPssKb` | {'int': 313} |
| `processes` | {'int': 313} |
| `pssFallbackProcesses` | {'int': 313} |

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
| `cpuMillicores` | {'int': 603} |
| `display` | {'int': 606} |
| `kind` | {'str': 606} |
| `processes` | {'int': 606} |
| `pssKb` | {'int': 606} |
| `rendererMaxPssKb` | {'int': 606} |
| `renderers` | {'int': 606} |
| `tabs` | {'int': 605} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
