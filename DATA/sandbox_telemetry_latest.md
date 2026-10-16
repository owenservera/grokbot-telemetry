# sandbox_telemetry_parse — 2026-10-16 03:03:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=23078 lines=85
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 44 |
| `memory_sample` | 32 |
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
| `chromeBrowserPssKb` | {'int': 32} |
| `chromeGpuPssKb` | {'int': 32} |
| `chromeOtherPssKb` | {'int': 32} |
| `chromeProcesses` | {'int': 32} |
| `chromeProfiles` | {'int': 32} |
| `chromeRendererMaxPssKb` | {'int': 32} |
| `chromeRendererPssKb` | {'int': 32} |
| `chromeRenderers` | {'int': 32} |
| `chromeTabs` | {'int': 32} |
| `chromeTabsProbedProfiles` | {'int': 32} |
| `chromeUtilityPssKb` | {'int': 32} |
| `desktopPssKb` | {'int': 32} |
| `hostPssKb` | {'int': 32} |
| `kind` | {'str': 32} |
| `memAvailableKb` | {'int': 32} |
| `memTotalKb` | {'int': 32} |
| `otherPssKb` | {'int': 32} |
| `processes` | {'int': 32} |
| `pssFallbackProcesses` | {'int': 32} |

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
| `cpuMillicores` | {'int': 41} |
| `display` | {'int': 44} |
| `kind` | {'str': 44} |
| `processes` | {'int': 44} |
| `pssKb` | {'int': 44} |
| `rendererMaxPssKb` | {'int': 44} |
| `renderers` | {'int': 44} |
| `tabs` | {'int': 43} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
