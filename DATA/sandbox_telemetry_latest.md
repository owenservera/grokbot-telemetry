# sandbox_telemetry_parse — 2026-10-13 09:55:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=994216 lines=2483
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2007 |
| `chrome_profile_sample` | 468 |
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
| `chromeBrowserPssKb` | {'int': 2007} |
| `chromeGpuPssKb` | {'int': 2007} |
| `chromeOtherPssKb` | {'int': 2007} |
| `chromeProcesses` | {'int': 2007} |
| `chromeProfiles` | {'int': 2007} |
| `chromeRendererMaxPssKb` | {'int': 2007} |
| `chromeRendererPssKb` | {'int': 2007} |
| `chromeRenderers` | {'int': 2007} |
| `chromeTabs` | {'int': 2007} |
| `chromeTabsProbedProfiles` | {'int': 2007} |
| `chromeUtilityPssKb` | {'int': 2007} |
| `desktopPssKb` | {'int': 2007} |
| `hostPssKb` | {'int': 2007} |
| `kind` | {'str': 2007} |
| `memAvailableKb` | {'int': 2007} |
| `memTotalKb` | {'int': 2007} |
| `otherPssKb` | {'int': 2007} |
| `processes` | {'int': 2007} |
| `pssFallbackProcesses` | {'int': 2007} |

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
| `cpuMillicores` | {'int': 467} |
| `display` | {'int': 468} |
| `kind` | {'str': 468} |
| `processes` | {'int': 468} |
| `pssKb` | {'int': 468} |
| `rendererMaxPssKb` | {'int': 468} |
| `renderers` | {'int': 468} |
| `tabs` | {'int': 468} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
