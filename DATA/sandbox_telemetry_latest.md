# sandbox_telemetry_parse — 2026-10-16 09:33:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=323007 lines=1207
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 792 |
| `memory_sample` | 406 |
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
| `chromeBrowserPssKb` | {'int': 406} |
| `chromeGpuPssKb` | {'int': 406} |
| `chromeOtherPssKb` | {'int': 406} |
| `chromeProcesses` | {'int': 406} |
| `chromeProfiles` | {'int': 406} |
| `chromeRendererMaxPssKb` | {'int': 406} |
| `chromeRendererPssKb` | {'int': 406} |
| `chromeRenderers` | {'int': 406} |
| `chromeTabs` | {'int': 406} |
| `chromeTabsProbedProfiles` | {'int': 406} |
| `chromeUtilityPssKb` | {'int': 406} |
| `desktopPssKb` | {'int': 406} |
| `hostPssKb` | {'int': 406} |
| `kind` | {'str': 406} |
| `memAvailableKb` | {'int': 406} |
| `memTotalKb` | {'int': 406} |
| `otherPssKb` | {'int': 406} |
| `processes` | {'int': 406} |
| `pssFallbackProcesses` | {'int': 406} |

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
| `cpuMillicores` | {'int': 789} |
| `display` | {'int': 792} |
| `kind` | {'str': 792} |
| `processes` | {'int': 792} |
| `pssKb` | {'int': 792} |
| `rendererMaxPssKb` | {'int': 792} |
| `renderers` | {'int': 792} |
| `tabs` | {'int': 791} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
